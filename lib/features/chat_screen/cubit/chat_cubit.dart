import 'package:chatbot_gemini/core/cache_helper/shared_preference.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uuid/uuid.dart';
import '../../../core/hive_service/hive_service.dart';
import '../data/models/chat_hive_model.dart';
import '../data/models/message_hive_model.dart';
import '../data/models/message_model.dart';
import '../data/repo/chat_repo.dart';
import 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  final ChatRepository chatRepository;
  final HiveService hiveService;
  final Uuid uuid = Uuid();

  List<MessageModel> messages = [];
  List<ChatHiveModel> chatHistory = [];
  String currentChatId = '';
  String userEmail = '';

  ChatCubit(this.chatRepository,this.hiveService)
      : super(const ChatState.initial()) {
    _initialize();
  }

  Future<void> _initialize() async {
    userEmail = await SharedPrefHelper.getString('userEmail');
    await loadChatHistory();
    await loadMessagesFromDB(currentChatId);
  }


  Future<void> loadChatHistory() async {
    chatHistory = hiveService.chatHiveModelBox.values
        .where((chat) => chat.userEmail == userEmail) // Filter by user email
        .toList();
    emit(ChatState.historyLoaded(List.from(chatHistory)));
    // emit(ChatState.initial());
  }
  Future<void> loadMessagesFromDB(String chatId) async {
    currentChatId = chatId;

    messages = hiveService.messageBox.values
        .where((msg) =>
    msg.chatId == chatId
        &&
        msg.userEmail == userEmail
    )
        .map((msg) => MessageModel(
      chatId: msg.chatId,
      content: msg.content,
      sender: msg.sender,
      imageUrl: msg.imageUrl,
      userEmail: msg.userEmail,
    ))
        .toList();
    emit(ChatState.success(messages: List.from(messages)));
  }

  Future<void> sendMessage(String content, String sender, String? filePath) async {
    final userMessage = MessageModel(
        chatId: currentChatId,
        content: content,
        sender: sender,
        imageUrl: filePath,
        userEmail: userEmail);

    messages.add(userMessage);
    await saveMessageToDB(userMessage);
    emit(ChatState.success(messages: List.from(messages)));

    final typingMessage = MessageModel(
        chatId: currentChatId,
        sender: 'gemini',
        isLoading: true,
        content: null,
        userEmail: userEmail);
    messages.add(typingMessage);
    emit(ChatState.success(messages: List.from(messages)));

    try {
      final response =
      await chatRepository.sendMessage(content, imagePath: filePath);
      messages.remove(typingMessage);

      final replyMessage = MessageModel(
          chatId: currentChatId,
          content: response,
          sender: 'gemini',
          userEmail: userEmail);
      messages.add(replyMessage);
      await saveMessageToDB(replyMessage);
      await updateChatModel(userMessage, response);
      emit(ChatState.success(messages: List.from(messages)));
    } catch (e) {
      messages.remove(typingMessage);
      emit(ChatState.failure(error: e.toString()));
    }
  }

  Future<void> saveMessageToDB(MessageModel message) async {
    final messageHiveModel = MessageHiveModel(
      chatId: message.chatId,
      content: message.content,
      sender: message.sender,
      imageUrl: message.imageUrl,
      userEmail: userEmail,
    );
    await hiveService.messageBox.add(messageHiveModel);
  }

  Future<void> updateChatModel(MessageModel userMessage, String botResponse) async {
    final existingChat = hiveService.chatHiveModelBox.get(currentChatId);
    final newTitle = userMessage.content == null || userMessage.content!.isEmpty
        ? 'User sent image'
        : userMessage.content!;
    if (existingChat != null) {
      existingChat.title = newTitle;
      existingChat.subTitle = botResponse;
      await hiveService.chatHiveModelBox.put(currentChatId, existingChat);
    } else {
      final newChat = ChatHiveModel(
        id: currentChatId,
        title: userMessage.content!,
        subTitle: botResponse,
        messageIds: [userMessage.chatId],
        userEmail: userEmail,
      );
      await hiveService.chatHiveModelBox.put(currentChatId, newChat);
      chatHistory.add(newChat);
    }

    chatHistory.sort((a, b) => b.timestamp.compareTo(a.timestamp));
    emit(ChatState.success(messages: List.from(messages)));
  }

  Future<void> deleteChatFromDB(String chatId) async {
    try {
      final messagesToDelete = hiveService.messageBox.values
          .where((msg) => msg.chatId == chatId)
          .toList();

      for (var msg in messagesToDelete) {
        await msg.delete();
      }
      messages.clear();
      final resetChat = ChatHiveModel(
          id: chatId,
          title: 'New Chat',
          subTitle: 'Tap to view',
          messageIds: [],
          userEmail: userEmail);

      await hiveService.chatHiveModelBox.put(chatId, resetChat);
      chatHistory = hiveService.chatHiveModelBox.values.toList();
      emit(ChatState.historyLoaded(List.from(chatHistory)));
      emit(ChatState.chatDeleted());
    } catch (e) {
      emit(ChatState.failure(error: e.toString()));
    }
  }

  Future<void> addNewChat() async {
    if (messages.isEmpty) return;
    final newChatId = uuid.v4();
    currentChatId = newChatId;

    final newChat = ChatHiveModel(
      id: newChatId,
      title: 'New Chat',
      subTitle: 'Tap to view',
      messageIds: [],
      userEmail: userEmail,
    );

    await hiveService.chatHiveModelBox.put(newChatId, newChat);
    chatHistory.add(newChat);
    chatHistory.sort((a, b) => b.timestamp.compareTo(a.timestamp));
    messages.clear();

    emit(ChatState.chatCreated(newChat));
    await loadChatHistory();
    emit(ChatState.initial());
  }

  Future<void> selectChat(String chatId) async {
    emit(ChatState.loading(message: chatId));
    currentChatId = chatId;
    await loadMessagesFromDB(currentChatId);
  }

  Future<void> deleteSpecificChatHistory(String chatId) async {
    messages.clear();
    if (hiveService.chatHiveModelBox.containsKey(chatId)) {
      emit(ChatState.loading());
      await hiveService.chatHiveModelBox.delete(chatId);
      chatHistory.removeWhere((chat) => chat.id == chatId);
      final messagesToDelete = hiveService.messageBox.values
          .where((msg) => msg.chatId == chatId)
          .toList();

      for (var msg in messagesToDelete) {
        await msg.delete();
      }
      emit(ChatState.historyLoaded(List.from(chatHistory)));
      emit(ChatState.chatDeleted());
    } else {
      emit(ChatState.failure(error: "Chat not found"));
    }
  }
}
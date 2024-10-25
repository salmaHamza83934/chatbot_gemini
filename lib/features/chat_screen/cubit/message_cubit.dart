import 'package:chatbot_gemini/features/chat_screen/data/models/message_hive_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../data/models/message_model.dart';
import '../data/repo/message_repo.dart';
import 'message_state.dart';
import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

class MessageCubit extends Cubit<MessageState> {
  final MessageRepository messageRepository;
  List<MessageModel> messages = [];
  String currentChatId = '1';
  final Uuid uuid = Uuid();
  late Box<MessageHiveModel> messageBox;

  MessageCubit(this.messageRepository) : super(const MessageState.initial()) {
    _initialize();
  }

  Future<void> _initialize() async {
    await _loadChatId();
    await loadMessagesFromDB();
  }

  Future<void> _loadChatId() async {
    final box = await Hive.openBox('chatBox');
    if (box.containsKey('chatId')) {
      currentChatId = box.get('chatId');
    } else {
      currentChatId = uuid.v4();
      await box.put('chatId', currentChatId);
    }
  }

  static MessageCubit get(context) => BlocProvider.of<MessageCubit>(context);

  void deleteChat() async {
    await deleteChatFromDB(currentChatId);
    messages.clear(); // Clear local messages after deleting
    emit(MessageState.initial()); // Emit the empty list
  }

  void sendMessage(String content, String sender, String? filePath) async {
    final userMessage = MessageModel(
      content: content,
      sender: sender,
      imageUrl: filePath,
      chatTitle: content,
      chatSubtitle: 'Clever cat is typing ~',
    );

    // Add user message to the messages list
    messages.add(userMessage);

    // Save user message to local DB
    await saveMessageInLocalDB(MessageHiveModel(
      content: userMessage.content,
      sender: userMessage.sender,
      imageUrl: filePath,
      chatId: currentChatId,
      chatTitle: userMessage.chatTitle,
      chatSubtitle: userMessage.chatSubtitle,
    ));

    // Emit updated messages
    emit(MessageState.success(List.from(messages)));

    // Create and show typing message
    final typingMessage = MessageModel(
      content: null,
      sender: 'gemini',
      isLoading: true,
      chatTitle: content,
      chatSubtitle: 'Chatbot is typing',
    );
    messages.add(typingMessage);
    emit(MessageState.success(List.from(messages)));

    try {
      // Send the message and wait for a response
      final response =
          await messageRepository.sendMessage(content, imagePath: filePath);

      // Remove typing message after receiving a response
      messages.remove(typingMessage);

      // Update the last user message's subtitle with the response
      if (messages.isNotEmpty) {
        var lastMessage =
            messages.last; // Access the last message instead of first
        lastMessage.chatSubtitle = response; // Update chatSubtitle
      }

      // Create and save the reply message
      final reply = MessageModel(
        content: response,
        sender: 'gemini',
        chatTitle: content,
        chatSubtitle: response,
      );
      messages.add(reply);

      // Save the reply message in local DB
      await saveMessageInLocalDB(MessageHiveModel(
        content: response,
        sender: 'gemini',
        chatId: currentChatId,
        chatTitle: content,
        chatSubtitle: reply.chatSubtitle,
      ));

      // Emit the updated messages list again
      emit(MessageState.success(List.from(messages)));
    } catch (e) {
      // Remove typing message if an error occurs
      messages.remove(typingMessage);
      print('Error while sending message: $e');
      emit(MessageState.failure(e.toString()));
    }
  }

  Future<void> saveMessageInLocalDB(MessageHiveModel message) async {
    await messageBox.add(message);
    //await loadChatHistoryIds(); // Update IDs whenever a new message is saved
  }

  Future<void> loadMessagesFromDB() async {
    messageBox = await Hive.openBox<MessageHiveModel>('chatMessages');
    messages = messageBox.values.map((hiveMessage) {
      return MessageModel(
        content: hiveMessage.content,
        sender: hiveMessage.sender,
        imageUrl: hiveMessage.imageUrl,
        isLoading: false,
        isAnimated: false,
        chatTitle: hiveMessage.chatTitle,
        chatSubtitle: hiveMessage.chatSubtitle,
      );
    }).toList();

    if (messages.isNotEmpty) {
      emit(MessageState.success(messages)); // Emit the loaded messages
    }
  }

  Future<void> deleteChatFromDB(String chatId) async {
    final messagesToDelete =
        messageBox.values.where((message) => message.chatId == chatId).toList();

    for (var message in messagesToDelete) {
      await message.delete();
    }
    await loadMessagesFromDB(); // Reload messages to ensure UI consistency
  }
}

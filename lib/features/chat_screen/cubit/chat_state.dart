import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/models/chat_hive_model.dart';
import '../data/models/message_model.dart';
part 'chat_state.freezed.dart';
@freezed
class ChatState with _$ChatState {
  const factory ChatState.initial() = ChatInitialState;
  const factory ChatState.loading({String? message}) = ChatLoadingState;
  const factory ChatState.success({
    required List<MessageModel> messages,
  }) = ChatSuccessState;
  const factory ChatState.failure({
    required String error,
  }) = ChatFailureState;
  const factory ChatState.historyLoaded(List<ChatHiveModel> chatHistory) = ChatHistoryLoadedState;
  const factory ChatState.chatCreated(ChatHiveModel newChat) = ChatCreatedState;
  const factory ChatState.chatDeleted() = ChatDeletedState;
}

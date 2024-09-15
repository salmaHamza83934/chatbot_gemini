import '../data/models/message_model.dart';

abstract class MessageState {}

class MessageInitial extends MessageState {}


class MessageSuccess extends MessageState {
  final List<MessageModel> messages;

  MessageSuccess(this.messages);
}

class MessageFailure extends MessageState {
  final String error;

  MessageFailure(this.error);
}

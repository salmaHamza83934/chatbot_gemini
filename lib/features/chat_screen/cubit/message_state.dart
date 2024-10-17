import 'package:freezed_annotation/freezed_annotation.dart';
import '../data/models/message_model.dart';

part 'message_state.freezed.dart';

@freezed
class MessageState with _$MessageState {
  const factory MessageState.initial() = MessageInitial;
  const factory MessageState.success(List<MessageModel> messages) = MessageSuccess;
  const factory MessageState.failure(String error) = MessageFailure;
}

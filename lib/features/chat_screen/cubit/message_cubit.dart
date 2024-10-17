import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import '../data/models/message_model.dart';
import 'message_state.dart';

class MessageCubit extends Cubit<MessageState> {

  final Gemini gemini = Gemini.instance;
  List<MessageModel> messages=[];

  MessageCubit() : super(const MessageState.initial());

  static MessageCubit get(context)=>BlocProvider.of<MessageCubit>(context);

  void deleteChat(){
    messages.clear();
    emit(const MessageState.initial());
  }

  void sendMessage(String content, String sender) async {
    print('');

    messages.add(MessageModel(content, sender));
    emit(MessageState.success(messages));

    final typingMessage = MessageModel('CleverCat is typing...', 'gemini');
    messages.add(typingMessage);
    emit(MessageState.success(messages));

    gemini.text(content).then((value){
        messages.remove(typingMessage);

        final message = MessageModel(value?.output??'Oops something went wrong!', 'gemini');
        messages.add(message);
        emit(MessageState.success(messages));

      }).catchError((e) {
        emit(MessageState.failure(e.toString()));
      });

}}

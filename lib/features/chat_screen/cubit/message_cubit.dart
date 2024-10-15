import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import '../data/models/message_model.dart';
import 'message_states.dart';

class MessageCubit extends Cubit<MessageState> {

  final Gemini gemini = Gemini.instance;
  List<MessageModel> messages=[];

  MessageCubit() : super(MessageInitial());

  static MessageCubit get(context)=>BlocProvider.of<MessageCubit>(context);

  void deleteChat(){
    messages.clear();
    emit(MessageInitial());
  }

  void sendMessage(String content, String sender) async {
    print('');

    messages.add(MessageModel(content, sender));
    emit(MessageSuccess(messages));

    final typingMessage = MessageModel('CleverCat is typing...', 'gemini');
    messages.add(typingMessage);
    emit(MessageSuccess(messages));

    gemini.text(content).then((value){
        messages.remove(typingMessage);

        final message = MessageModel(value?.output??'Oops something went wrong!', 'gemini');
        messages.add(message);
        emit(MessageSuccess(messages));

      }).catchError((e) {
        emit(MessageFailure(e.toString()));
      });

}}

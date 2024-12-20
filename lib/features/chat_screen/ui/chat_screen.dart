import 'package:chatbot_gemini/features/chat_screen/cubit/chat_cubit.dart';
import 'package:chatbot_gemini/features/chat_screen/ui/widgets/chat_bloc_builder.dart';
import 'package:chatbot_gemini/features/chat_screen/ui/widgets/message_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'chat_history/chat_drawer.dart';
import 'widgets/bot_details_line.dart';

class ChatScreen extends StatelessWidget {
  String? chatId;

  ChatScreen({super.key, this.chatId});

  @override
  Widget build(BuildContext context) {
    if (chatId != null && context.read<ChatCubit>().currentChatId != chatId) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        context.read<ChatCubit>().selectChat(chatId!);
      });
    }
    return Scaffold(
      drawer: buildChatScreenDrawer(context),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(-1.00, 0.00),
                  end: Alignment(1, -1),
                  colors: [
                    Color(0xFFA5E4EB),
                    Color(0xFFC8F4F6),
                    Color(0xFFFAE4D5),
                  ],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const BotDetailsLine(),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40.r),
                          topLeft: Radius.circular(40.r),
                        ),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ChatBlocBuilder(),
                          MessageFormField(),
                          SizedBox(
                            height: 10.h,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

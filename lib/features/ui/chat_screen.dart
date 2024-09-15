import 'package:chatbot_gemini/core/theme/app_text_styles.dart';
import 'package:chatbot_gemini/features/ui/widgets/bot_details_line.dart';
import 'package:chatbot_gemini/features/ui/widgets/message_form_field.dart';
import 'package:chatbot_gemini/features/ui/widgets/message_widget.dart';
import 'package:chatbot_gemini/features/ui/widgets/no_message_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../cubit/message_cubit.dart';
import '../cubit/message_states.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                    BlocBuilder<MessageCubit, MessageState>(
                      bloc: MessageCubit.get(context),
                      builder: (context, state) {
                        if (state is MessageInitial) {
                          return const NoMessageWidget();
                        }
                        else if (state is MessageSuccess) {
                          return Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.w, vertical: 10.h),
                              child: ListView.builder(
                                physics: const BouncingScrollPhysics(),
                                itemBuilder: (BuildContext context, int index) {
                                  return MessageWidget(state.messages[index]);
                                },
                                itemCount: state.messages.length,
                              ),
                            ),
                          );
                        }
                        return Expanded(
                          child: Center(child: Text(
                              'Oops, Something\n went wrong!', style
                              :AppTextStyles.font24quicksand,textAlign: TextAlign.center,)),
                        );
                      },
                    ),
                    const MessageFormField(),
                    SizedBox(
                      height: 30.w,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

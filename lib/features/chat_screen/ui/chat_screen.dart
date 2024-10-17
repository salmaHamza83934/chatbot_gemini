import 'package:chatbot_gemini/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/shared_widgets/bot_details_line.dart';
import '../../../core/shared_widgets/message_form_field.dart';
import '../../../core/shared_widgets/message_widget.dart';
import '../../../core/shared_widgets/no_message_widget.dart';
import '../cubit/message_cubit.dart';
import '../cubit/message_state.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          BlocBuilder<MessageCubit, MessageState>(
                            bloc: MessageCubit.get(context),
                            builder: (context, state) {
                              return state.maybeWhen(
                                  success: (messages) {
                                   return Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10.w, vertical: 10.h),
                                        child: ListView.builder(
                                          physics:
                                              const BouncingScrollPhysics(),
                                          itemBuilder: (BuildContext context,
                                              int index) {
                                            return MessageWidget(
                                                messages[index]);
                                          },
                                          itemCount: messages.length,
                                        ),
                                      ),
                                    );
                                  },initial: ()=>const NoMessageWidget(),
                                  orElse: () => Expanded(
                                        child: Center(
                                            child: Text(
                                          'Oops, Something\n went wrong!',
                                          style: AppTextStyles.font24quicksand,
                                          textAlign: TextAlign.center,
                                        )),
                                      ));
                            },
                          ),
                          const MessageFormField(),
                          SizedBox(
                            height: 20.w,
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

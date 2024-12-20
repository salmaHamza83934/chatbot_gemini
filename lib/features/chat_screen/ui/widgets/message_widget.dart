import 'dart:io';
import 'package:chatbot_gemini/features/chat_screen/cubit/chat_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../cubit/chat_state.dart';
import '../../data/models/message_model.dart';

class MessageWidget extends StatelessWidget {
  final MessageModel message;

  const MessageWidget(this.message, {super.key});

  @override
  Widget build(BuildContext context) {
    return message.sender == 'user'
        ? SentMessage(message)
        : ReceiverMessage(message);
  }
}

class SentMessage extends StatelessWidget {
  final MessageModel message;

  const SentMessage(this.message, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          margin:
              EdgeInsets.only(top: 10.h, bottom: 10.h, right: 10.w, left: 40.w),
          padding: EdgeInsets.all(10.r),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
                begin: Alignment(1.00, -1.00),
                end: Alignment(0, 1),
                colors: [
                  Color(0xFFC8F4F6),
                  Color(0xFFA5E4EB),
                  Color(0xFF5BDAE3),
                ]),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(12.r),
                topLeft: Radius.circular(12.r),
                bottomLeft: Radius.circular(12.r)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              if (message.imageUrl != null) // Check for image URL
                SizedBox(
                  width: 150.w,
                  child: Image.file(
                    File(message.imageUrl!),
                    fit: BoxFit.contain,
                  ),
                ),
              Text(
                message.content!,
                style:
                    AppTextStyles.font15quicksand.copyWith(color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ReceiverMessage extends StatefulWidget {
  final MessageModel message;

  const ReceiverMessage(this.message, {super.key});

  @override
  State<ReceiverMessage> createState() => _ReceiverMessageState();
}

class _ReceiverMessageState extends State<ReceiverMessage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 10.h,
            bottom: 10.h,
            right: widget.message.isLoading ? 180.w : 40.w,
            left: 10.w,
          ),
          padding: EdgeInsets.all(10.r),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(12.r),
              topLeft: Radius.circular(12.r),
              bottomRight: Radius.circular(12.r),
            ),
          ),
          child: widget.message.isLoading
              ? SpinKitThreeBounce(
                  color: Colors.grey.shade500,
                  size: 25.0.r,
                )
              : BlocBuilder<ChatCubit, ChatState>(
                  builder: (context, state) {
                    return RichText(
                            text: TextSpan(
                              style: AppTextStyles.font16quicksand,
                              text: widget.message.content ??
                                  'Sorry, something went wrong!',
                            ),
                          );
                  },
                ),
        ),
      ],
    );
  }
}

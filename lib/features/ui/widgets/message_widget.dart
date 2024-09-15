import 'package:chatbot_gemini/features/data/models/message_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theme/app_text_styles.dart';

class MessageWidget extends StatelessWidget {
  MessageModel message;

  MessageWidget(this.message, {super.key});

  @override
  Widget build(BuildContext context) {
    return message.sender == 'user'
        ? SentMessage(message)
        : ReceiverMessage(message);
  }
}

class SentMessage extends StatelessWidget {
  MessageModel message;

  SentMessage(this.message, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          margin: EdgeInsets.only(top: 10.h,bottom: 10.h,right: 10.w,left: 40.w),
          padding: EdgeInsets.all(10.r),
          decoration: BoxDecoration(
            gradient:const LinearGradient(
          begin: Alignment(1.00, -1.00),
          end: Alignment(0, 1),
          colors: [
          Color(0xFFC8F4F6),
          Color(0xFFA5E4EB),
          Color(0xFF5BDAE3),
          ]
          ),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(12.r),
                topLeft: Radius.circular(12.r),
                bottomLeft: Radius.circular(12.r)),
          ),
          child: Text(
            message.content,
            style: AppTextStyles.font15quicksand.copyWith(color: Colors.white), // Bot text style

          ),
        ),
      ],
    );
  }
}

class ReceiverMessage extends StatelessWidget {
  MessageModel message;

  ReceiverMessage(this.message, {super.key});

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 10.h,bottom: 10.h,right: 40.w,left: 10.w),
          padding: EdgeInsets.all(10.r),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(12.r),
                topLeft: Radius.circular(12.r),
                bottomRight: Radius.circular(12.r)),
          ),
          child: Text(
            message.content,
            style: AppTextStyles.font15quicksand, // Bot text style

          ),
        ),

      ],
    );
  }
}

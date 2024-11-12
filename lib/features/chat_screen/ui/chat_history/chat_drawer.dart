import 'package:chatbot_gemini/features/chat_screen/ui/chat_history/widgets/chat_history_bloc_builder.dart';
import 'package:chatbot_gemini/features/chat_screen/ui/chat_history/widgets/chat_history_drawer_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/app_text_styles.dart';

Drawer buildChatScreenDrawer(BuildContext context) {
  return Drawer(
    child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
          colors: [
            Color(0xFFFAE4D5),
            Color(0xFFC8F4F6),
            Color(0xFFA5E4EB),
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 35.h,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              children: [
                Icon(
                  Icons.history_outlined,
                  size: 30.r,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  'Chats History',
                  style: AppTextStyles.font24quicksand
                      .copyWith(color: Colors.black),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          ChatHistoryBlocBuilder(),
          ChatHistoryDrawerButtons(),
        ],
      ),
    ),
  );
}


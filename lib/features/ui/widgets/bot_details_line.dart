import 'package:chatbot_gemini/core/asset_images/app_images.dart';
import 'package:chatbot_gemini/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class BotDetailsLine extends StatelessWidget {
  const BotDetailsLine({super.key});

  @override
  Widget build(BuildContext context) {
    return             Container(
      height: 60.h,
      margin: EdgeInsets.only(top: 30.h, bottom: 5.h, left: 40.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: Colors.blueAccent,
            backgroundImage: AssetImage(
                AppImages.avatarRobotImage),
          ),
          SizedBox(
            width: 40.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'CleverCat Bot',
                style: AppTextStyles.font20quicksand,
              ),
              Text('Online',
                  style: AppTextStyles.font12quicksand),
            ],
          ),
        ],
      ),
    );
  }
}

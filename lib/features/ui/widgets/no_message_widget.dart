import 'package:chatbot_gemini/core/asset_images/app_images.dart';
import 'package:chatbot_gemini/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class NoMessageWidget extends StatelessWidget {
  bool isMessageEmpty;

  NoMessageWidget(this.isMessageEmpty);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 130.h,
            ),
            Visibility(
              visible: isMessageEmpty,
              child: Column(
                children: [
                  Image.asset(
                    AppImages.sadRobotImage,
                    height: 250.h,
                    width: 250.w,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'Aw, no messages yet.\nWaiting for your first message.',
                    style: AppTextStyles.font24quicksand,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

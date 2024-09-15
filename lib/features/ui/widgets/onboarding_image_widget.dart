import 'package:chatbot_gemini/core/asset_images/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingImageWidget extends StatelessWidget {
  Animation<double> imageAnimation;

  OnboardingImageWidget(this.imageAnimation, {super.key});

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: imageAnimation,
      child: Image.asset(
        AppImages.onboardingRobotImage,
        height: 300.h,
        width: 300.w,
      ),
    );
  }
}

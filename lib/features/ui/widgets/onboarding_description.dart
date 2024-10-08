import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:chatbot_gemini/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingDescription extends StatelessWidget {
  bool isTextShowed;
  OnboardingDescription(this.isTextShowed, {super.key});

  @override
  Widget build(BuildContext context) {
    return             Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: SizedBox(
        height: 100.h,
        width: 250.w,
        child: Visibility(
          visible: isTextShowed,
          child: DefaultTextStyle(
            style: AppTextStyles.font18montserrat,
            child: AnimatedTextKit(
              isRepeatingAnimation: false,
              animatedTexts: [
                TypewriterAnimatedText(
                  speed: const Duration(milliseconds: 20),
                  'Your AI assistant, ready to tackle your questions with purrfect answers! and sharp insights. Let’s chat and solve problems together!',
                ),
              ],
            ),
          ),
        ),
      ),
    );

  }
}

import 'package:chatbot_gemini/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../../../core/shared_widgets/gradient_text_widget.dart';

class OnboardingTitleWidget extends StatelessWidget {
  Animation<double> titleAnimation;
  OnboardingTitleWidget(this.titleAnimation, {super.key});

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: titleAnimation,
      child: GradientText(
        'Meet CleverCat!',
        style: AppTextStyles.font30montserrat,
        gradient: const LinearGradient(
          colors: [
            Color(0xFFFAE4D5),
            Color(0xFFA5E4EB),
            Color(0xFF5BDAE3),
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
      ),
    );
  }
}

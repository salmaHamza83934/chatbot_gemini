import 'package:chatbot_gemini/core/routing/routes_names.dart';
import 'package:chatbot_gemini/core/theme/app_text_styles.dart';
import 'package:chatbot_gemini/features/login_screen/ui/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class GetStartedButton extends StatelessWidget {
  bool isAnimationCompleted;
  Animation<double> buttonAnimation;
   GetStartedButton(this.isAnimationCompleted,this.buttonAnimation, {super.key});

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: buttonAnimation,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 55.h,
            width: 150.w,
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Material(
              borderRadius: BorderRadius.circular(16.r),
              color: Colors.black,
              child: InkWell(
                onTap: isAnimationCompleted
                    ? () {
                  Navigator.pushNamed(context, Routes.loginScreen);
                }
                    : null,
                borderRadius: BorderRadius.circular(16.r),
                child: Center(
                  child: DefaultTextStyle(
                    style: AppTextStyles.font18quicksand,
                    child: const Text('Get started!'),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

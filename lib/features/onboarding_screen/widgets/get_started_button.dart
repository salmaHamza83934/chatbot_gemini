import 'package:chatbot_gemini/core/routing/routes_names.dart';
import 'package:chatbot_gemini/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/cache_helper/shared_preference.dart';
import '../../../core/constants/constants.dart';

class GetStartedButton extends StatelessWidget {
  bool isAnimationCompleted;
  Animation<double> buttonAnimation;

  GetStartedButton(this.isAnimationCompleted, this.buttonAnimation,
      {super.key});

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
                    ? () async {
                        await checkIsUserLoggedIn();
                        Navigator.pushNamed(
                            context,
                            isUserLoggedIn
                                ? Routes.chatScreen
                                : Routes.loginScreen);
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

  checkIsUserLoggedIn() async {
    String userToken = await SharedPrefHelper.getSecuredString('userToken');
    if (userToken.isEmpty) {
      isUserLoggedIn = false;
    } else {
      isUserLoggedIn = true;
    }
  }
}

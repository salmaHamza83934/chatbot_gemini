import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/app_text_styles.dart';

class SignupTitleSection extends StatelessWidget {
  const SignupTitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50.h,
        ),
        Text(
          'SIGN UP',
          style: AppTextStyles.font24quicksand.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.black87,
              fontSize: 28.sp),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          'Join CleverCat! Sign up \n and let’s meow!',
          textAlign: TextAlign.center,
          style: AppTextStyles.font15quicksand,
        ),
      ],
    );
  }
}

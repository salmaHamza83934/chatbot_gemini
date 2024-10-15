import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theme/app_text_styles.dart';
class LoginTitleSection extends StatelessWidget {
  const LoginTitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50.h,
        ),
        Text(
          'LOG IN',
          style: AppTextStyles.font24quicksand.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.black87,
              fontSize: 28.sp),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          'Welcome back! \n Sign in and let’s chat!',
          textAlign: TextAlign.center,
          style: AppTextStyles.font15quicksand,
        ),
        SizedBox(
          height: 20.h,
        ),
      ],
    );
  }
}

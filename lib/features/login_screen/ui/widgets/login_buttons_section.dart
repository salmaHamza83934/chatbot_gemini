import 'package:chatbot_gemini/features/login_screen/logic/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routing/routes_names.dart';
import '../../../../core/theme/app_text_styles.dart';

class LoginButtonsSection extends StatelessWidget {
  const LoginButtonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            if (context.read<LoginCubit>().formKey
                .currentState!
                .validate()) {
              context.read<LoginCubit>().login();
            }
          },
          child: Container(
            height: 60.h,
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: <Color>[
                    Color(0xFFFAE4D5),
                    Color(0xFFA5E4EB),
                    Color(0xFF5BDAE3),
                  ],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                ),
                borderRadius: BorderRadius.circular(25.r)),
            child: Center(
              child: Text(
                'LOG IN',
                style: AppTextStyles.font18montserrat
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          children: [
            const Expanded(
              child: Divider(
                thickness: 1, // Set the thickness of the divider
                color: Colors.grey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              // Add some space around "or"
              child: Text(
                'Or',
                style: AppTextStyles.font12quicksand,
              ),
            ),
            const Expanded(
              child: Divider(
                thickness: 1,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, Routes.signInScreen);

          },
          child: Container(
            height: 60.h,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade300, width: 2),
                borderRadius: BorderRadius.circular(25.r)),
            child: Center(
              child: Text(
                'CREATE ACCOUNT',
                style: AppTextStyles.font15quicksand.copyWith(
                    color: Colors.grey.shade400, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 40.h,
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/routing/routes_names.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../logic/signup_cubit.dart';

class SignupButtonsSection extends StatelessWidget {
  const SignupButtonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20.h,
        ),
        GestureDetector(
          onTap: () {
            if (context.read<SignupCubit>().formKey
                .currentState!
                .validate()) {
              context.read<SignupCubit>().signUp();
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
                'CREATE ACCOUNT',
                style: AppTextStyles.font15quicksand
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 10.h),
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Routes.loginScreen);
            },
            child: Text(
              'Already have account?',
              style: AppTextStyles.font12quicksand,
            ),
          ),
        ),
        SizedBox(
          height: 20.h,
        )
      ],
    );
  }
}

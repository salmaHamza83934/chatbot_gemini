import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/app_text_styles.dart';
import '../../../login_screen/ui/login_screen.dart';

class SignupButtonsSection extends StatelessWidget {
  GlobalKey<FormState> formKey;


  SignupButtonsSection(this.formKey);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20.h,
        ),
        GestureDetector(
          onTap: () {
              if (formKey.currentState!.validate()) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ));

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
                style: AppTextStyles.font15quicksand.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 7.w,vertical: 10.h),
          child: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
            },
            child: Text(
              'Already have account?',
              style: AppTextStyles.font12quicksand,
            ),
          ),
        ),
        SizedBox(height: 20.h,)
      ],
    );
  }
}

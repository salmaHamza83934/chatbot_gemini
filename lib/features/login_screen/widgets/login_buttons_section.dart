import 'package:chatbot_gemini/features/chat_screen/ui/chat_screen.dart';
import 'package:chatbot_gemini/features/signup_screen/ui/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theme/app_text_styles.dart';

class LoginButtonsSection extends StatelessWidget {
  GlobalKey<FormState> formKey;

  LoginButtonsSection(this.formKey);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            if (formKey.currentState!.validate()) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatScreen(),
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
            Expanded(
              child: Divider(
                thickness: 1, // Set the thickness of the divider
                color: Colors.grey,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              // Add some space around "or"
              child: Text(
                'Or',
                style: AppTextStyles.font12quicksand,
              ),
            ),
            Expanded(
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
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SignupScreen(),
                ));
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

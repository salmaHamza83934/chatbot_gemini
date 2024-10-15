import 'package:chatbot_gemini/core/shared_widgets/app_form_field.dart';
import 'package:chatbot_gemini/features/signup_screen/ui/widgets/signup_buttons_section.dart';
import 'package:chatbot_gemini/features/signup_screen/ui/widgets/signup_circles_animation.dart';
import 'package:chatbot_gemini/features/signup_screen/ui/widgets/signup_title_section.dart';
import 'package:chatbot_gemini/features/signup_screen/ui/widgets/validation_row.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignupScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  var formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 7),
      reverseDuration: const Duration(seconds: 5),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Stack(
            children: [
              SignupCirclesAnimation(_controller),
              Center(
                child: Opacity(
                  opacity: 0.85,
                  child: SingleChildScrollView(
                    child: Container(
                      margin: EdgeInsets.symmetric(
                          vertical: 100.h, horizontal: 40.w),
                      padding: EdgeInsets.symmetric(horizontal: 30.w),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(25.r)),
                      child: Form(
                        key: formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SignupTitleSection(),
                            SizedBox(
                              height: 20.h,
                            ),
                            AppFormField(false, 'Enter your E-mail'),
                            AppFormField(true, 'Enter your password'),
                            AppFormField(true, 'Confirm your password'),
                            Column(
                              children: [
                                buildValidationRow(
                                    'At least 1 lowercase letter', true),
                                SizedBox(height: 2.h),
                                buildValidationRow(
                                    'At least 1 uppercase letter', false),
                                SizedBox(height: 2.h),
                                buildValidationRow(
                                    'At least 1 special character', false),
                                SizedBox(height: 2.h),
                                buildValidationRow('At least 1 number', false),
                                SizedBox(height: 2.h),
                                buildValidationRow(
                                    'At least 8 characters long', false),
                              ],
                            ),
                            SignupButtonsSection(formKey)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}

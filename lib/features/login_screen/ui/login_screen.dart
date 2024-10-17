import 'package:chatbot_gemini/core/di/dependency_injection.dart';
import 'package:chatbot_gemini/features/login_screen/logic/login_cubit.dart';
import 'package:chatbot_gemini/features/login_screen/ui/widgets/login_bloc_listener.dart';
import 'package:chatbot_gemini/features/login_screen/ui/widgets/login_buttons_section.dart';
import 'package:chatbot_gemini/features/login_screen/ui/widgets/login_circles_animation.dart';
import 'package:chatbot_gemini/features/login_screen/ui/widgets/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 7),
      reverseDuration: const Duration(seconds: 5),
      vsync: this,
    )
      ..repeat();
  }
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Stack(
            children: [
              LoginCirclesAnimation(_controller),
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
                              offset: const Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(25.r)),
                      child: const Column(
                        children: [
                          LoginForm(),
                          LoginButtonsSection(),
                          LoginBlocListener()
                        ],
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

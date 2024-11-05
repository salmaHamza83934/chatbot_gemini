import 'package:chatbot_gemini/features/signup_screen/logic/signup_cubit.dart';
import 'package:chatbot_gemini/features/signup_screen/ui/widgets/password_validation.dart';
import 'package:chatbot_gemini/features/signup_screen/ui/widgets/signup_title_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/app_regex/app_regex.dart';
import '../../../../core/shared_widgets/app_form_field.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;
  bool isObscure = true;
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<SignupCubit>().passwordController;
    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener() {
    if (!mounted) return; // Safeguard to prevent setState if disposed
    passwordController.addListener(() {
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(passwordController.text);
        hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacters =
            AppRegex.hasSpecialCharacter(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  void dispose() {
    passwordController.dispose();
    context.read<SignupCubit>().emailController.dispose();
    context.read<SignupCubit>().confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignupCubit>().formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SignupTitleSection(),
          SizedBox(
            height: 20.h,
          ),
          AppFormField(
            textInputType: TextInputType.emailAddress,
            haveIcon: false,
            controller: context.read<SignupCubit>().emailController,
            hintText: 'Enter your E-mail',
            validator: (text) {
              if (text == null || text.trim().isEmpty) {
                return 'field musn\'t be empty';
              }
              return null;
            },
          ),
          AppFormField(
            haveIcon: true,
            hintText: 'Enter your password',
            controller: context.read<SignupCubit>().passwordController,
            isObscure: isObscure,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscure = !isObscure;
                });
              },
              child: Icon(
                isObscure ? Icons.visibility_off : Icons.visibility,
                color: Colors.cyan,
              ),
            ),
            validator: (text) {
              if (text == null || text.trim().isEmpty) {
                return 'field musn\'t be empty';
              }
              return null;
            },
          ),
          AppFormField(
            haveIcon: true,
            hintText: 'Confirm your password',
            controller: context.read<SignupCubit>().confirmPasswordController,
            isObscure: isObscure,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscure = !isObscure;
                });
              },
              child: Icon(
                isObscure ? Icons.visibility_off : Icons.visibility,
                color: Colors.cyan,
              ),
            ),
            validator: (text) {
              if (text == null || text.trim().isEmpty) {
                return 'field musn\'t be empty';
              }
              if (text != context.read<SignupCubit>().passwordController.text) {
                return 'passwords doesn\'t match.';
              }
              return null;
            },
          ),
          PasswordValidations(
              hasLowerCase: hasLowerCase,
              hasUpperCase: hasUpperCase,
              hasSpecialCharacters: hasSpecialCharacters,
              hasNumber: hasNumber,
              hasMinLength: hasMinLength),
        ],
      ),
    );
  }
}

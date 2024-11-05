import 'package:chatbot_gemini/features/login_screen/logic/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/shared_widgets/app_form_field.dart';
import 'login_title_section.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool isObscure = true;

  @override
  void dispose() {
    context.read<LoginCubit>().passwordController.dispose();
    context.read<LoginCubit>().emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const LoginTitleSection(),
          AppFormField(
            textInputType: TextInputType.emailAddress,
              haveIcon: false,
              hintText: 'Enter your E-mail',
              controller:context.read<LoginCubit>().emailController,validator: (text) {
            if (text == null || text
                .trim()
                .isEmpty) {
              return 'field musn\'t be empty';
            }
            return null;
          },),
          AppFormField(
              haveIcon: true,
              hintText: 'Enter your password',
              controller:
              context.read<LoginCubit>().passwordController,validator: (text) {
            if (text == null || text
                .trim()
                .isEmpty) {
              return 'field musn\'t be empty';
            }
            return null;
          },isObscure: isObscure,suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                isObscure = !isObscure;
              });
            },
            child: Icon(
              isObscure ? Icons.visibility_off : Icons.visibility,
              color: Colors.cyan,
            ),
          ),),
          SizedBox(
            height: 20.h,
          ),
        ],
      ),
    );
  }
}

import 'package:chatbot_gemini/core/theme/app_text_styles.dart';
import 'package:chatbot_gemini/features/login_screen/ui/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/routing/routes_names.dart';
import '../../logic/signup_cubit.dart';
import '../../logic/signup_state.dart';

class SignupBlocListener extends StatelessWidget {
  const SignupBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupCubit, SignupState>(
      listenWhen: (previous, current) =>
          current is Loading ||
          current is Success ||
          current is Error,
      listener: (context, state) {
        state.whenOrNull(
          signupLoading: () {
            showDialog(
              barrierDismissible: false,
              context: context,
              builder: (context) => Center(
                child: CircularProgressIndicator(
                  color: Colors.cyan,
                  backgroundColor: Colors.grey.shade300,
                ),
              ),
            );
          },
          signupSuccess: (signupResponse) {
            Navigator.pop(context);
            showSuccessDialog(context);
          },
          signupError: (error) {
            setupErrorState(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void showSuccessDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(
            child: Text(
              'Yay!',
              style: AppTextStyles.font20quicksand,
            ),
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text(
                  'You’re in! Ready for some pawsome conversations?',
                  style: AppTextStyles.font15quicksand,textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.cyan,
                disabledForegroundColor: Colors.grey.withOpacity(0.38),
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, Routes.loginScreen);

              },
              child: Text(
                'Yes',
                style: AppTextStyles.font15quicksand.copyWith(color: Colors.white),
              ),
            ),
          ],
        );
      },
    );
  }

  void setupErrorState(BuildContext context, String error) {
    Navigator.pop(context);
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        title: Center(
          child: Text(
            'Oops!',
            style: AppTextStyles.font20quicksand,
          ),
        ),
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              Text(
                error,
                style: AppTextStyles.font15quicksand,textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.cyan,
              disabledForegroundColor: Colors.grey.withOpacity(0.38),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Ok',
              style: AppTextStyles.font15quicksand.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

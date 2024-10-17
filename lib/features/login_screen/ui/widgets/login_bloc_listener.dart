import 'package:chatbot_gemini/core/routing/routes_names.dart';
import 'package:chatbot_gemini/core/theme/app_text_styles.dart';
import 'package:chatbot_gemini/features/login_screen/logic/login_cubit.dart';
import 'package:chatbot_gemini/features/login_screen/logic/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading ||
          current is Success ||
          current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loginLoading: () {
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
          loginSuccess: (signupResponse) {
            Navigator.pop(context);
            showSuccessDialog(context);
          },
          loginError: (error) {
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
              'WooHoo!',
              style: AppTextStyles.font20quicksand,
            ),
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text(
                  'Great to see you again!\n Let\'s dive in!',
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
                Navigator.pushReplacementNamed(context, Routes.chatScreen);
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

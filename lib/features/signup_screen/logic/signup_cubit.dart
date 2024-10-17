import 'package:bloc/bloc.dart';
import 'package:chatbot_gemini/features/signup_screen/logic/signup_state.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../data/signup_repo.dart';


class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this._signupRepository) : super(const SignupState.initial());
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  final SignupRepository _signupRepository;


  void signUp() async {
    if (formKey.currentState?.validate() ?? false) {
      emit(const SignupState.signupLoading());
      try {
        final response = await _signupRepository.signUp(
          emailController.text,
          confirmPasswordController.text,
        );
        emit(SignupState.signupSuccess(response));
      } on FirebaseAuthException catch (e) {
          emit(SignupState.signupError(e.message??'Something went wrong!'));
      } catch (e) {
        emit(SignupState.signupError(e.toString()));
      }
    }
  }
}

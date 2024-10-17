import 'package:bloc/bloc.dart';
import 'package:chatbot_gemini/features/login_screen/data/login_repo.dart';
import 'package:chatbot_gemini/features/login_screen/logic/login_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepository _loginRepository;
  LoginCubit(this._loginRepository) : super(const LoginState.initial());
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void login() async {
    if (formKey.currentState?.validate() ?? false) {
      emit(const LoginState.loginLoading());
      try {
        final response = await _loginRepository.login(
          emailController.text,
          passwordController.text,
        );
        emit(LoginState.loginSuccess(response));
      } on FirebaseAuthException catch (e) {
        emit(LoginState.loginError(e.message??'Something went wrong!'));
      } catch (e) {
        emit(LoginState.loginError(e.toString()));
      }
    }
}}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_state.freezed.dart';

@freezed
class SignupState<T> with _$SignupState<T> {
  const factory SignupState.initial() = _Initial;

  const factory SignupState.signupLoading() = Loading;
  const factory SignupState.signupSuccess(T data) = Success<T>;
  const factory SignupState.signupError(String error) = Error;
}

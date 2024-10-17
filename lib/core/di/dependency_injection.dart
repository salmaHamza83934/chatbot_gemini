import 'package:chatbot_gemini/features/login_screen/data/login_repo.dart';
import 'package:chatbot_gemini/features/login_screen/logic/login_cubit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';

import '../../features/signup_screen/data/signup_repo.dart';
import '../../features/signup_screen/logic/signup_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  FirebaseAuth firebaseAuth=FirebaseAuth.instance;

  getIt.registerLazySingleton<SignupRepository>(()=>SignupRepository(firebaseAuth: firebaseAuth));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));

  getIt.registerLazySingleton<LoginRepository>(()=>LoginRepository(firebaseAuth: firebaseAuth));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
}

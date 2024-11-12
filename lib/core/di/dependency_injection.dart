import 'package:chatbot_gemini/features/chat_screen/cubit/chat_cubit.dart';
import 'package:chatbot_gemini/features/chat_screen/data/repo/chat_repo.dart';
import 'package:chatbot_gemini/features/login_screen/data/login_repo.dart';
import 'package:chatbot_gemini/features/login_screen/logic/login_cubit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';

import '../../features/signup_screen/data/signup_repo.dart';
import '../../features/signup_screen/logic/signup_cubit.dart';
import '../hive_service/hive_service.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  FirebaseAuth firebaseAuth=FirebaseAuth.instance;

  getIt.registerLazySingleton<SignupRepository>(()=>SignupRepository(firebaseAuth: firebaseAuth));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));

  getIt.registerLazySingleton<LoginRepository>(()=>LoginRepository(firebaseAuth: firebaseAuth));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  final hiveService = HiveService();
  await hiveService.init(); // Initialize Hive and boxes
  getIt.registerSingleton<HiveService>(hiveService);
  getIt.registerLazySingleton<ChatRepository>(() => ChatRepository());
  getIt.registerFactory<ChatCubit>(() => ChatCubit(getIt<ChatRepository>(), getIt<HiveService>()));
}

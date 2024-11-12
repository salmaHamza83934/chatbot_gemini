import 'package:chatbot_gemini/core/cache_helper/shared_preference.dart';
import 'package:chatbot_gemini/core/constants/constants.dart';
import 'package:chatbot_gemini/core/di/dependency_injection.dart';
import 'package:chatbot_gemini/core/routing/app_router.dart';
import 'package:chatbot_gemini/core/routing/routes_names.dart';
import 'package:chatbot_gemini/features/chat_screen/data/models/chat_hive_model.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/bloc_observer/myBlocObserver.dart';
import 'package:hive_flutter/adapters.dart';

import 'features/chat_screen/data/models/message_hive_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Gemini.init(apiKey: GEMINI_API_KEY);
  Bloc.observer = MyBlocObserver();
  await Firebase.initializeApp();
  await ScreenUtil.ensureScreenSize();
  await Hive.initFlutter();
  Hive.registerAdapter(MessageHiveModelAdapter());
  Hive.registerAdapter(ChatHiveModelAdapter());
  await setupGetIt();
  runApp(MyApp(appRouter: AppRouter(),));
}

class MyApp extends StatelessWidget {
  AppRouter appRouter;

  MyApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(384, 805),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) =>
          MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey[800]!),
              useMaterial3: true,
            ),
            initialRoute: Routes.onboardingScreen,
            onGenerateRoute: appRouter.generateRoute,
          ),
    );
  }

}

import 'package:chatbot_gemini/core/constants/constants.dart';
import 'package:chatbot_gemini/features/cubit/message_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/bloc_observer/myBlocObserver.dart';
import 'features/ui/onboarding_screen.dart';

void main() {
  Gemini.init(apiKey: GEMINI_API_KEY);
  Bloc.observer = MyBlocObserver();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MessageCubit(),
      child: ScreenUtilInit(
        designSize: const Size(384, 805),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_ , child)=> MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey[800]!),
            useMaterial3: true,
          ),
          home: const OnboardingScreen(),
        ),
      ),
    );
  }
}

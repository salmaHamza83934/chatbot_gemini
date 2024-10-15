import 'package:chatbot_gemini/core/constants/constants.dart';
import 'package:chatbot_gemini/features/chat_screen/ui/chat_screen.dart';
import 'package:chatbot_gemini/features/onboarding_screen/onboarding_screen.dart';
import 'package:chatbot_gemini/features/signup_screen/ui/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/bloc_observer/myBlocObserver.dart';
import 'features/chat_screen/cubit/message_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Gemini.init(apiKey: GEMINI_API_KEY);
  Bloc.observer = MyBlocObserver();
  await ScreenUtil.ensureScreenSize();
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
          home: OnboardingScreen(),
        ),
      ),
    );
  }
}

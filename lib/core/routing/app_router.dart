import 'package:chatbot_gemini/core/routing/routes_names.dart';
import 'package:chatbot_gemini/features/chat_screen/ui/chat_screen.dart';
import 'package:chatbot_gemini/features/onboarding_screen/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/login_screen/logic/login_cubit.dart';
import '../../features/login_screen/ui/login_screen.dart';
import '../../features/signup_screen/logic/signup_cubit.dart';
import '../../features/signup_screen/ui/signup_screen.dart';
import '../di/dependency_injection.dart';


class AppRouter {
  Route? generateRoute(RouteSettings settings) {

    switch (settings.name) {
      case Routes.onboardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );

      case Routes.signInScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: const SignupScreen(),
          ),
        );

      case Routes.chatScreen:
        return MaterialPageRoute(
          builder: (_) =>  ChatScreen(),
        );

      default:
        return null;
    }
  }
}

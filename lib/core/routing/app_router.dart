import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_exam/core/di/service_locator.dart';
import 'package:online_exam/core/routing/routes.dart';

import '../../features/auth/logic/login_cubit/login_cubit.dart';
import '../../features/auth/ui/login/login_screen.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    // this arguments to be passed in any screen like this (args as className)
    final args = settings.arguments;

    switch (settings.name) {
      // case Routes.onBoardingScreen:
      //   return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      // case Routes.signupScreen:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) => getIt<SignUpCubit>(),
      //       child: const SignupScreen(),
      //     ),
      //   );
      
      default:
        return null;
    }
  }
}

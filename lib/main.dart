import 'package:flutter/material.dart';
import 'package:todolist/screens/login_screen.dart';
import 'package:todolist/screens/signup_screen.dart';
import 'package:todolist/screens/splash_screen.dart';
import 'package:todolist/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        AppRoutes.splash: (context) => const SplashScreen(),
        AppRoutes.signup: (context) => const SignupScreen(),
        AppRoutes.login: (context) => const LoginScreen(),
      },
    );
  }
}

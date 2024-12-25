import 'package:flutter/material.dart';
import 'package:store_app/features/splash_screen/widget/splash_body.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static String id = 'splashScreen';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SplashBody()

    );
  }
}

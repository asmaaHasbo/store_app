import 'package:flutter/material.dart';
import 'package:store_app/features/home_page/widgets/home_screen.dart';

void delayedFunction(context) => Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    });

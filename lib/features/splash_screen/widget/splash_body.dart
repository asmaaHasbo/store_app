import 'package:flutter/material.dart';
import 'package:store_app/core/themes/styles.dart';
import 'package:store_app/features/splash_screen/widget/delyed_function.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    delayedFunction(context);
    return Center(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.contain,
              image: AssetImage('assets/images/splashBackground.jpg' ,)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 60),
              child: Text(
                'welcome to our store',
                style: Styles.textStyle45
              ),
            ),
          ],
        ),
      ),
    );
  }
}






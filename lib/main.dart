import 'package:flutter/material.dart';
import 'package:store_app/features/home_page/widgets/home_screen.dart';

void main() async{
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // routes: {
      //   HomePage.id : (context) => const HomePage(),
      //   SplashScreen.id : (context) => const SplashScreen(),
      // },
      // initialRoute: HomePage.id,
      home: HomeScreen(),
    );
  }
}


import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:store_app/features/home_page/widgets/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCSiG1rmqNQUH2QKJuBHsORJd5B66cZ7yc",
            authDomain: "whats-app-f2c1f.firebaseapp.com",
            projectId: "whats-app-f2c1f",
            storageBucket: "whats-app-f2c1f.firebasestorage.app",
            messagingSenderId: "734299336679",
            appId: "1:734299336679:web:dd35ec4f13c5ad657b9742",
            measurementId: "G-5YN15236Y4"));
  } else {
    Firebase.initializeApp();
  }

  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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

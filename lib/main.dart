import 'package:flutter/material.dart';

// Screens
import 'splash_screen.dart';
import 'login_screen.dart';
import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Muslim Mate",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1D7381), // main app color
        ),
        useMaterial3: true,
      ),

      // FIRST SCREEN
      home: const SplashScreen(),

      // ROUTES
      routes: {
        '/login': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}

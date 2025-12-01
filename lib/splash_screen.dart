import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    // 2 sec baad login page pe
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0x661DB1BD), // #1DB1BD66
              Color(0xFF1D7381), // #1D7381
            ],
          ),
        ),
        child: Center(
          child: SizedBox(
            height: 140,
            child: Image.asset(
              "assets/image/Quran.png", // make sure file exists
            ),
          ),
        ),
      ),
    );
  }
}

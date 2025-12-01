import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Assalamu’alaikum",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                "Welcome to Muslim Mate",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              const SizedBox(height: 40),

              // LOGO
              SizedBox(
                height: 160,
                child: Image.asset("assets/image/Quran1.png"),
              ),

              const SizedBox(height: 60),

              // GOOGLE LOGIN BUTTON
              Container(
                width: 280,
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: const Color(0xFF1D7381)),
                ),
                child: InkWell(
                  onTap: () {
                    // login ke baad home pe
                    Navigator.pushReplacementNamed(context, '/home');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // icon path: assets/image/google_icon.png
                      Image.asset("assets/image/google_icon.png", height: 20),
                      const SizedBox(width: 10),
                      const Text(
                        "Login with Google",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF1D7381),
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

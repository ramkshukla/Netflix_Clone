import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Text(
          "NETFLIX",
          style: TextStyle(
            color: Colors.white,
            fontSize: 60,
            fontWeight: FontWeight.w500,
            shadows: <Shadow>[
              Shadow(offset: Offset(2.0, 7.0), blurRadius: 3.0),
            ],
          ),
        ),
      ),
    );
  }
}

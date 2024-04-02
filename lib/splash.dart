import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:toolapp/main.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  get splash => null;

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          Center(
            child: LottieBuilder.asset('images/Animation - 1711946300700.json'),
          )
        ],
      ),
     nextScreen: LoginPage(),
     splashIconSize: 100,
     backgroundColor: const Color.fromARGB(255, 107, 159, 248),);
  }
}
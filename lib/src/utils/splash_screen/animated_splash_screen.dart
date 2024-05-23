import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:foodquest/src/features/authentication/screens/login_screen/login_page.dart';
import 'package:lottie/lottie.dart';

class SplashScreenAnimated extends StatelessWidget {
  const SplashScreenAnimated({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return AnimatedSplashScreen(
      splash: Center(
        child: Image.asset('assets/logo/MainLogo.png', height: 500, width: 500),
      ),
      nextScreen: LoginPage(),
      splashTransition: SplashTransition.slideTransition,
      duration: 3000,
      backgroundColor: Color((0xffFFF5E6)),
    );
  }
}

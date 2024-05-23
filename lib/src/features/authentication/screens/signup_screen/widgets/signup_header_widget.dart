import 'package:flutter/material.dart';
import 'package:foodquest/src/utils/splash_screen/splash_screen.dart';
import 'package:get/get.dart';

class SignupHeaderWidget extends StatelessWidget {
  const SignupHeaderWidget({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Get.to(() => SplashScreen());
          },
          child: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(
              'assets/logo/SubLogo.png',
              height: height * 0.05,
              width: width * 0.5,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: height * 0.03,
        ),
        Text(
          'Create an account',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}

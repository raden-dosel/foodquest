import 'package:flutter/material.dart';
import 'package:foodquest/src/utils/splash_screen/splash_screen.dart';
import 'package:get/get.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.circular(10),
          ),
          child: GestureDetector(
            onTap: () {
              Get.to(() => SplashScreen());
            },
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
          'Login to your account',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        SizedBox(
          height: height * 0.02,
        ),
        Container(
          child: Image.asset(
            'assets/illustrations/image1.png',
            fit: BoxFit.cover,
            height: height * 0.25,
          ),
        ),
      ],
    );
  }
}

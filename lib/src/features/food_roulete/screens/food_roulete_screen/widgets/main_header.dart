import 'package:flutter/material.dart';
import 'package:foodquest/src/utils/splash_screen/splash_screen.dart';
import 'package:get/get.dart';

class Main_Header extends StatelessWidget {
  const Main_Header({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_drop_down_circle_rounded,
              color: Theme.of(context).colorScheme.onSurface,
            )),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:foodquest/src/utils/splash_screen/splash_screen.dart';
import 'package:get/get.dart';

class FPHeaderWidget extends StatelessWidget {
  const FPHeaderWidget({
    super.key,
    required this.height,
    required this.width,
    required this.image,
    required this.title,
    required this.subtitle,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.textAlign,
  });

  final double height;
  final double width;
  final String image, title, subtitle;
  final CrossAxisAlignment crossAxisAlignment;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Center(
          child: Container(
            child: Image.asset(
              image,
              fit: BoxFit.cover,
              height: height * 0.25,
            ),
          ),
        ),
        SizedBox(
          height: height * 0.05,
        ),
        Center(
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        SizedBox(
          height: height * 0.01,
        ),
        Center(
          child: Text(
            subtitle,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
      ],
    );
  }
}

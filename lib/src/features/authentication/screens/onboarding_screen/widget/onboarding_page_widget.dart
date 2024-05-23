import 'package:flutter/material.dart';
import 'package:foodquest/src/features/authentication/models/onboarding_model/onboarding_model.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({
    super.key,
    required this.model,
  });

  final OnboardingModel model;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.all(30.0),
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Image.asset(model.image, height: height * 0.5),
          Column(
            children: [
              Text(
                model.title,
                style: TextStyle(
                    color: Color(0xff00100B),
                    fontSize: width * 0.06,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.inter().fontFamily),
              ),
              SizedBox(height: height * 0.02),
              Text(
                model.subtitle,
                style: TextStyle(
                    color: Color(0xff00100B),
                    fontWeight: FontWeight.normal,
                    fontSize: width * 0.04,
                    fontFamily: GoogleFonts.inter().fontFamily),
              ),
            ],
          ),
          Text(model.counterText,
              style: TextStyle(
                  color: Color(0xff00100B),
                  fontWeight: FontWeight.w100,
                  fontSize: width * 0.04,
                  fontFamily: GoogleFonts.inter().fontFamily)),
          SizedBox(height: height * 0.15)
        ],
      ),
    );
  }
}

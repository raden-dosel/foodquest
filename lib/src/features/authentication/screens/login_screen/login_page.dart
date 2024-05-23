// ignore_for_file: prefer_const_constructors

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:foodquest/src/constants/image_strings.dart';
import 'package:foodquest/src/features/authentication/screens/login_screen/widgets/login_footer_widget.dart';
import 'package:foodquest/src/features/authentication/screens/login_screen/widgets/login_form_widget.dart';
import 'package:foodquest/src/features/authentication/screens/login_screen/widgets/login_header_widget.dart';
import 'package:foodquest/src/features/authentication/screens/onboarding_screen/onboarding_screen.dart';
import 'package:foodquest/src/features/authentication/screens/signup_screen/signup_page.dart';
import 'package:foodquest/src/common_widgets/form_container_widget.dart';
import 'package:foodquest/src/utils/splash_screen/splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var fontSize = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
        body: SingleChildScrollView(
      clipBehavior: Clip.antiAlias,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.05, vertical: height * 0.03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Login Header !!!
              LoginHeaderWidget(height: height, width: width),
              SizedBox(
                height: height * 0.02,
              ),
              // Login Form !!!
              LoginFormWidget(),
              SizedBox(
                height: height * 0.01,
              ),
              //This is the signup text button
              LoginFooterWidget(
                  height: height, width: width, fontSize: fontSize)
            ],
          ),
        ),
      ),
    ));
  }
}

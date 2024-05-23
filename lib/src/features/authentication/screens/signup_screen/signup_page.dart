// ignore_for_file: prefer_const_constructors

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:foodquest/src/features/authentication/screens/login_screen/login_page.dart';
import 'package:foodquest/src/common_widgets/form_container_widget.dart';
import 'package:foodquest/src/features/authentication/screens/signup_screen/widgets/signup_footer_widget.dart';
import 'package:foodquest/src/features/authentication/screens/signup_screen/widgets/signup_form_widget.dart';
import 'package:foodquest/src/features/authentication/screens/signup_screen/widgets/signup_header_widget.dart';
import 'package:foodquest/src/utils/splash_screen/splash_screen.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var fontSize = MediaQuery.of(context).textScaleFactor;
    double pixel = MediaQuery.of(context).devicePixelRatio;
    return Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: .05 * width, vertical: height * 0.03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SignupHeaderWidget(height: height, width: width),
              SizedBox(
                height: height * 0.02,
              ),
              SignUpFormWidget(),
              SizedBox(
                height: height * 0.01,
              ),
              SignupFooterWidget(
                fontSize: fontSize,
                height: height,
                width: width,
              ),
            ],
          ),
        ),
      )),
    );
  }
}

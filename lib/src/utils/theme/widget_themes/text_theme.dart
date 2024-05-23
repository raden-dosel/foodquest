// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TTextTheme {
  TTextTheme._();

  static TextTheme lightTextTheme(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return TextTheme(
      titleLarge: TextStyle(
        fontSize: screenWidth * 0.12,
        fontWeight: FontWeight.bold,
        color: Color(0xff00100B),
      ),
      titleMedium: TextStyle(
        fontSize: screenWidth * 0.08,
        fontWeight: FontWeight.bold,
        color: Color(0xff00100B),
      ),
      titleSmall: TextStyle(
        fontSize: screenWidth * 0.06,
        fontWeight: FontWeight.bold,
        color: Color(0xff00100B),
      ),
      bodyMedium: TextStyle(
        fontSize: screenWidth * 0.06,
        fontWeight: FontWeight.w400,
        color: Color(0xff00100B),
      ),
      bodySmall: TextStyle(
        fontSize: screenWidth * 0.04,
        fontWeight: FontWeight.normal,
        color: Color(0xff00100B),
      ),
      labelLarge: TextStyle(
        fontSize: screenWidth * 0.12,
        fontWeight: FontWeight.bold,
        color: Color(0xff00100B),
      ),
      labelMedium: TextStyle(
        fontSize: screenWidth * 0.06,
        fontWeight: FontWeight.w500,
        color: Color(0xff00100B),
      ),
      labelSmall: TextStyle(
        fontSize: screenWidth * 0.04,
        fontWeight: FontWeight.w500,
        color: Color(0xff00100B),
      ),
    );
  }

  static TextTheme darkTextTheme(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return TextTheme(
        titleLarge: TextStyle(
          fontSize: screenWidth * 0.12,
          fontWeight: FontWeight.bold,
          color: Color(0xffF5F5F5),
        ),
        titleMedium: TextStyle(
          fontSize: screenWidth * 0.08,
          fontWeight: FontWeight.bold,
          color: Color(0xffF5F5F5),
        ),
        titleSmall: TextStyle(
          fontSize: screenWidth * 0.06,
          fontWeight: FontWeight.bold,
          color: Color(0xffF5F5F5),
        ),
        bodyMedium: TextStyle(
          fontSize: screenWidth * 0.06,
          fontWeight: FontWeight.w400,
          color: Color(0xffF5F5F5),
        ),
        bodySmall: TextStyle(
          fontSize: screenWidth * 0.04,
          fontWeight: FontWeight.normal,
          color: Color(0xffF5F5F5),
        ),
        labelLarge: TextStyle(
          fontSize: screenWidth * 0.12,
          fontWeight: FontWeight.bold,
          color: Color(0xffF5F5F5),
        ),
        labelMedium: TextStyle(
          fontSize: screenWidth * 0.06,
          fontWeight: FontWeight.w500,
          color: Color(0xffF5F5F5),
        ),
        labelSmall: TextStyle(
          fontSize: screenWidth * 0.04,
          fontWeight: FontWeight.w500,
          color: Color(0xffF5F5F5),
        ));
  }
}

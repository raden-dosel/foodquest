import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TElevatedButtonThemes {
  static ElevatedButtonThemeData primaryElevatedButtonLightTheme(
      BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return ElevatedButtonThemeData(
      style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(Color(0xffFF3636)),
          foregroundColor: WidgetStateProperty.all(Color(0xffFFF5E6)),
          padding:
              WidgetStateProperty.all(EdgeInsets.symmetric(horizontal: 20.0)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0))),
          textStyle: WidgetStateProperty.all(TextStyle(
            fontSize: screenWidth * 0.04,
            fontWeight: FontWeight.bold,
            fontFamily: GoogleFonts.inter().fontFamily,
            color: Color(0xffF5F5F5),
          )),
          minimumSize:
              WidgetStateProperty.all<Size>(Size(width * 0.9, height * 0.06)),
          elevation: WidgetStateProperty.all(0)),
    );
  }

  static ElevatedButtonThemeData primaryElevatedButtonDarkTheme(
      BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return ElevatedButtonThemeData(
      style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(Color(0xffFF6662)),
          foregroundColor: WidgetStateProperty.all(Color(0xffFFF5E6)),
          padding:
              WidgetStateProperty.all(EdgeInsets.symmetric(horizontal: 20.0)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0))),
          textStyle: WidgetStateProperty.all(TextStyle(
            fontSize: screenWidth * 0.04,
            fontWeight: FontWeight.bold,
            fontFamily: GoogleFonts.inter().fontFamily,
            color: Color(0xffFFF5E6),
          )),
          minimumSize:
              WidgetStateProperty.all<Size>(Size(width * 0.9, height * 0.06)),
          elevation: WidgetStateProperty.all(0)),
    );
  }
}

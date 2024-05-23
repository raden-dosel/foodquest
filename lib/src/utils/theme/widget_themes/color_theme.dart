// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TColorTheme {
  TColorTheme._();

  static ColorScheme colorLightTheme = ColorScheme.light(
    primary: Color(0xffFF3636),
    secondary: Color(0xffFFD045),
    primaryContainer: Color(0xffFFF5E6),
    brightness: Brightness.light,
    surface: Color(0xffFFF5E6),
    background: Color(0xffFFF5E6),
    onSurface: Color(0xff00100B),
    error: Color(0xffCE2029),
    tertiary: Color(0xffE7D8C5),
    tertiaryContainer: Color(0xffFFF5E6),
    // Add more colors as needed
  );

  static ColorScheme colorDarkTheme = ColorScheme.dark(
    primary: Color(0xffFF6662),
    secondary: Color(0xffFFD045),
    primaryContainer: Color(0xffCDC5BB),
    brightness: Brightness.dark,
    surface: Color(0xffCDC5BB),
    background: Color(0xff404A42),
    onSurface: Color(0xffFFF5E6),
    error: Color(0xffFF7F7F),
    tertiary: Color(0xffE0CFB8),
    tertiaryContainer: Color(0xffA89B8A),
    // Add more colors as needed
  );
}

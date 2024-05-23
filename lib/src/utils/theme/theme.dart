import 'package:flutter/material.dart';
import 'package:foodquest/src/utils/theme/widget_themes/color_theme.dart';
import 'package:foodquest/src/utils/theme/widget_themes/elevated_button_themes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:foodquest/src/utils/theme/widget_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme(BuildContext context) {
    return ThemeData(
      splashColor: Color(0xffFFFAF2),
      useMaterial3: true,
      brightness: Brightness.light,
      primaryColorLight: Color(0xffFF3636),
      scaffoldBackgroundColor: Color(0xffFFFAF2),
      fontFamily: GoogleFonts.inter().fontFamily,
      textTheme: TTextTheme.lightTextTheme(context),
      elevatedButtonTheme:
          TElevatedButtonThemes.primaryElevatedButtonLightTheme(context),
      colorScheme: TColorTheme.colorLightTheme,
    );
  }

  static ThemeData darkTheme(BuildContext context) {
    return ThemeData(
      splashColor: Color(0xff353238),
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Color(0xff353238),
      primaryColorDark: Color(0xffFF968E),
      fontFamily: GoogleFonts.inter().fontFamily,
      textTheme: TTextTheme.darkTextTheme(context),
      elevatedButtonTheme:
          TElevatedButtonThemes.primaryElevatedButtonDarkTheme(context),
      colorScheme: TColorTheme.colorDarkTheme,
    );
  }
}

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:foodquest/src/constants/image_strings.dart';
import 'package:foodquest/src/features/authentication/screens/signup_screen/signup_page.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
    required this.height,
    required this.width,
    required this.fontSize,
  });

  final double height;
  final double width;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            'Or',
            style: Theme.of(context).textTheme.labelSmall,
          ),
        ),
        SizedBox(
          height: height * 0.01,
        ),
        Center(
          child: OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              side: BorderSide(
                  color: Theme.of(context).colorScheme.onSurface, width: 1.0),
              minimumSize: Size(width * 0.9, height * 0.06),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            label: Text(
              'Sign-in with Google',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            icon: Image.asset(sGoogleLogo1),
            onPressed: () {},
          ),
        ),
        SizedBox(
          height: height * 0.02,
        ),
        Center(
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Don\'t have an account? ',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                TextSpan(
                  text: 'Sign up now',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.blue,
                    fontFamily: GoogleFonts.inter().fontFamily,
                    fontSize: 16 * fontSize,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Get.to(() => SignUpPage()); // Route definition
                    },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

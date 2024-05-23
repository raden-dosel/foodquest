import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:foodquest/src/constants/image_strings.dart';
import 'package:foodquest/src/features/authentication/screens/login_screen/login_page.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupFooterWidget extends StatelessWidget {
  const SignupFooterWidget({
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
                  text: 'Account Holder already? ',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                TextSpan(
                  text: 'Click here to login',
                  style: TextStyle(
                    fontFamily: GoogleFonts.inter().fontFamily,
                    decoration: TextDecoration.underline,
                    color: Colors.blue,
                    fontSize: 16 * fontSize,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Get.to(() => LoginPage()); // Route definition

                      // Handle link tap (e.g., launch URL)
                      // Replace with your actual URL
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

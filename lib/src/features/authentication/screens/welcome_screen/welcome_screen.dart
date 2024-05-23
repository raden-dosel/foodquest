import 'package:flutter/material.dart';
import 'package:foodquest/src/common_widgets/animation_widgets/animation_widget.dart';
import 'package:foodquest/src/common_widgets/animation_widgets/animation_widget_controller.dart';
import 'package:foodquest/src/common_widgets/animation_widgets/animation_widget_model.dart';
import 'package:foodquest/src/constants/image_strings.dart';
import 'package:foodquest/src/constants/text_strings.dart';
import 'package:foodquest/src/features/authentication/screens/login_screen/login_page.dart';
import 'package:foodquest/src/features/authentication/screens/signup_screen/signup_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeAnimationController());
    controller.startAnimation();
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          FadeAnimation(
            durationMS: 1000,
            model: FadeAnimationModel(
                bottomAfter: 0,
                bottomBefore: -100,
                leftAfter: 0,
                leftBefore: 0,
                rightAfter: 0,
                rightBefore: 0,
                topAfter: 0,
                topBefore: 0),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    sWSI1,
                    height: height * 0.6,
                  ),
                  Text(
                    tWST1,
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurface,
                        fontSize: width * 0.06,
                        fontWeight: FontWeight.bold,
                        fontFamily: GoogleFonts.inter().fontFamily),
                  ),
                  Text(
                    tWSB1,
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurface,
                        fontWeight: FontWeight.normal,
                        fontSize: width * 0.04,
                        fontFamily: GoogleFonts.inter().fontFamily),
                  ),
                  Column(
                    children: [
                      OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(
                                color: Theme.of(context).colorScheme.onSurface,
                                width: 1.0),
                            minimumSize: Size(width * 0.9, height * 0.06),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {
                            Get.to(() => LoginPage());
                          },
                          child: Text("Login",
                              style: TextStyle(
                                fontSize: width * 0.04,
                                fontWeight: FontWeight.bold,
                                fontFamily: GoogleFonts.inter().fontFamily,
                                color: Theme.of(context).colorScheme.onSurface,
                              ))),
                      SizedBox(height: height * 0.02),
                      ElevatedButton(
                          onPressed: () {
                            Get.to(() => SignUpPage());
                          },
                          child: Text("Sign Up"))
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

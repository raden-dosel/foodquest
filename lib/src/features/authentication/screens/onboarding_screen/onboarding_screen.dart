// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:foodquest/src/constants/colors.dart';
import 'package:foodquest/src/constants/image_strings.dart';
import 'package:foodquest/src/constants/text_strings.dart';
import 'package:foodquest/src/features/authentication/controllers/onboarding_controller.dart';
import 'package:foodquest/src/features/authentication/models/onboarding_model/onboarding_model.dart';
import 'package:foodquest/src/features/food_roulete/screens/food_roulete_screen/food_roulete_screen.dart';
import 'package:foodquest/src/features/authentication/screens/onboarding_screen/widget/onboarding_page_widget.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final obController = OnboardingController();

    double width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            liquidController: obController.controller,
            pages: obController.pages,
            onPageChangeCallback: obController.OnPageChangedCallback,
            slideIconWidget: Icon(
              Icons.arrow_back_ios,
              color: Color(0xffffffff),
              size: height * 0.05,
            ),
            enableSideReveal: true,
          ),
          Positioned(
            bottom: height * 0.06,
            child: OutlinedButton(
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(20),
                side: BorderSide(
                  color: Color(0xff00100B),
                ),
              ),
              onPressed: () {
                obController.animateToNextPage();
              },
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: tDarkColor,
                ),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: tWhiteColor,
                ),
              ),
            ),
          ),
          Positioned(
              top: height * .05,
              right: width * .05,
              child: TextButton(
                onPressed: () {
                  Get.to(() => FoodRouleteScreen());
                },
                child: Text('Skip',
                    style: TextStyle(
                      color: tGrayColor,
                      fontSize: width * 0.04,
                      fontFamily: GoogleFonts.inter().fontFamily,
                    )),
              )),
          Obx(
            () => Positioned(
                bottom: 15,
                child: AnimatedSmoothIndicator(
                    activeIndex: obController.currentPage.value,
                    count: 3,
                    effect: WormEffect(
                      dotHeight: 5,
                      activeDotColor: tPrimaryColor,
                      dotColor: tGrayColor,
                    ))),
          )
        ],
      ),
    );
  }
}

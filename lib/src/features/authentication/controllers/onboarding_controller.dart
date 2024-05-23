import 'package:foodquest/src/constants/colors.dart';
import 'package:foodquest/src/constants/image_strings.dart';
import 'package:foodquest/src/constants/text_strings.dart';
import 'package:foodquest/src/features/authentication/models/onboarding_model/onboarding_model.dart';
import 'package:foodquest/src/features/authentication/screens/onboarding_screen/widget/onboarding_page_widget.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class OnboardingController extends GetxController {
  final controller = LiquidController();
  RxInt currentPage = 0.obs;

  final pages = [
    OnBoardingPageWidget(
      model: OnboardingModel(
        title: tOBT1,
        subtitle: tOBB1,
        image: sOBI1,
        bgColor: tOBP1c,
        counterText: tOBC1,
      ),
    ),
    OnBoardingPageWidget(
      model: OnboardingModel(
        title: tOBT2,
        subtitle: tOBB2,
        image: sOBI2,
        bgColor: tOBP2c,
        counterText: tOBC2,
      ),
    ),
    OnBoardingPageWidget(
      model: OnboardingModel(
        title: tOBT3,
        subtitle: tOBB3,
        image: sOBI3,
        bgColor: tOBP3c,
        counterText: tOBC3,
      ),
    ),
  ];

  void OnPageChangedCallback(int activePageIndex) {
    currentPage.value = activePageIndex;
  }

  void skip() {
    controller.jumpToPage(page: 2);
  }

  void animateToNextPage() {
    int nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
  }
}

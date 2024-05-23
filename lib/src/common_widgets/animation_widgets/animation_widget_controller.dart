import 'package:foodquest/src/features/authentication/screens/welcome_screen/welcome_screen.dart';
import 'package:get/get.dart';

class FadeAnimationController extends GetxController {
  static FadeAnimationController get find => Get.find();

  RxBool animate = false.obs;

  Future startAnimationSplashScreen() async {
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(const Duration(milliseconds: 3000));
    animate.value = false;
    await Future.delayed(const Duration(milliseconds: 2000));
    Get.offAll(() => const WelcomeScreen());
  }

  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value = true;
  }
}

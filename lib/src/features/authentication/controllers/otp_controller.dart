import 'package:flutter/material.dart';
import 'package:foodquest/src/features/food_roulete/screens/food_roulete_screen/food_roulete_screen.dart';
import 'package:foodquest/src/repository/authentication_repository/authentication_repository.dart';
import 'package:get/get.dart';

class OTPController extends GetxController {
  OTPController get instance => Get.find();

  final codeController = TextEditingController();

  void verifyOTP(String otp) async {
    // Call the repository function to verify the OTP
    var isVerified = await AuthenticationRepository.instance.verifyOTP(otp);
    isVerified ? Get.offAll(const FoodRouleteScreen()) : Get.back();
  }
}

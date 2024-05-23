import 'package:flutter/material.dart';
import 'package:foodquest/src/repository/authentication_repository/authentication_repository.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  //TextField Controllers to get data from TextFields
  final email = TextEditingController();
  final password = TextEditingController();
  final cPassword = TextEditingController();
  final fullName = TextEditingController();
  final phoneNo = TextEditingController();

  //Call this Function from Design & it will do the rest
  Future registerUser(String email, String password) async {
    String? error = await AuthenticationRepository.instance
        .createUserWithEmailAndPassword(email, password) as String?;
    if (error != null) {
      Get.showSnackbar(GetSnackBar(
        message: error.toString(),
      ));
    }
  }

  bool isPasswordMatch() {
    return password.text == cPassword.text;
  }

  void phoneAuthentication(String phoneNo) {
    AuthenticationRepository.instance.phoneAuthentication(phoneNo);
  }
}

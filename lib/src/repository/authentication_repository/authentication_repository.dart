import 'package:firebase_auth/firebase_auth.dart';
import 'package:foodquest/src/features/food_roulete/screens/food_roulete_screen/food_roulete_screen.dart';
import 'package:foodquest/src/features/authentication/screens/welcome_screen/welcome_screen.dart';
import 'package:get/get.dart';

import 'exceptions/login_with_email_and_pssword_failure.dart';
import 'exceptions/signup_email_password_failure.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  //Variables
  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;
  var verificationID = ''.obs;

  //Will be load when app launches this func will be called and set the firebaseUser state
  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  /// If we are setting initial screen from here
  /// then in the main.dart => App() add CircularProgressIndicator()
  _setInitialScreen(User? user) {
    user == null
        ? Get.offAll(() => const WelcomeScreen())
        : Get.offAll(() => const FoodRouleteScreen());
  }

  //FUNC
  Future<String?> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      firebaseUser.value != null
          ? Get.offAll(() => const FoodRouleteScreen())
          : Get.to(() => const WelcomeScreen());
    } on FirebaseAuthException catch (e) {
      final ex = SignUpWithEmailAndPasswordFailure.code(e.code);
      return ex.message;
    } catch (_) {
      const ex = SignUpWithEmailAndPasswordFailure();
      return ex.message;
    }
    return null;
  }

  Future<String?> loginWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      final ex = LoginWithEmailAndPasswordFailure.code(e.code);
      return ex.message;
    } catch (_) {
      const ex = LoginWithEmailAndPasswordFailure();
      return ex.message;
    }
    return null;
  }

  Future<void> logout() async => await _auth.signOut();

  Future<void> phoneAuthentication(String phoneNo) async {
    await _auth.verifyPhoneNumber(
        phoneNumber: phoneNo,
        verificationCompleted: (credentials) async {
          await _auth.signInWithCredential(credentials);
        },
        verificationFailed: (e) {
          if (e.code == 'invalid-phone-number') {
            Get.snackbar('Error', 'Invalid Phone Number');
          } else {
            Get.snackbar('Error', 'Something went wrong');
          }
        },
        codeSent: (verificationID, resendToken) {
          this.verificationID.value = verificationID;
        },
        codeAutoRetrievalTimeout: (verificationID) {
          this.verificationID.value = verificationID;
        });
  }

  Future<bool> verifyOTP(String otp) async {
    final credentials = PhoneAuthProvider.credential(
        verificationId: verificationID.value, smsCode: otp);
    var authCredentials = await _auth.signInWithCredential(credentials);
    return authCredentials.user != null ? true : false;
  }
}

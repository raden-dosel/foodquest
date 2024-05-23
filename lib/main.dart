import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:foodquest/src/features/authentication/screens/welcome_screen/welcome_screen.dart';
import 'package:foodquest/src/repository/authentication_repository/authentication_repository.dart';
import 'package:foodquest/src/utils/splash_screen/animated_splash_screen.dart';
import 'package:foodquest/src/utils/splash_screen/splash_screen.dart';
import 'package:foodquest/src/features/authentication/screens/login_screen/login_page.dart';
import 'package:foodquest/src/utils/theme/theme.dart';
import 'package:get/get.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => Get.put(AuthenticationRepository()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: TAppTheme.lightTheme(context),
        darkTheme: TAppTheme.darkTheme(context),
        themeMode: ThemeMode.system,
        defaultTransition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
        home: CircularProgressIndicator());
  }
}

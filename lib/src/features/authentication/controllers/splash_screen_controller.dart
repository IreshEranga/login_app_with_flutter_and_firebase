import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app_with_flutter_and_firebase/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';
import 'package:login_app_with_flutter_and_firebase/src/features/authentication/screens/welcome/welcome_screen.dart';

class SplashScreenController extends GetxController{

  static SplashScreenController get find => Get.find();

  RxBool animate = false.obs;

  Future<void> startAnimation() async {
    // Start the animation after a short delay
    await Future.delayed(const Duration(milliseconds: 500));

      animate.value = true;


    // Wait for a few seconds before navigating to the Welcome Screen
    await Future.delayed(const Duration(seconds: 5));

    //Get.to(Welcome_Screen());
    Get.to(OnBoardingScreen());

      // Navigator.pushReplacement(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) => const Welcome_Screen(),
      //   ),
      // );

  }
}
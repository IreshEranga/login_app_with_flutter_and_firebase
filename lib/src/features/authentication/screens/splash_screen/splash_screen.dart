import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:login_app_with_flutter_and_firebase/src/constants/colors.dart';
import 'package:login_app_with_flutter_and_firebase/src/constants/image_strings.dart';
import 'package:login_app_with_flutter_and_firebase/src/constants/sizes.dart';
import 'package:login_app_with_flutter_and_firebase/src/constants/text_strings.dart';
import 'package:login_app_with_flutter_and_firebase/src/features/authentication/controllers/splash_screen_controller.dart';
import 'package:login_app_with_flutter_and_firebase/src/features/authentication/screens/welcome/welcome_screen.dart';

class CustomSplashScreen extends StatelessWidget {
  CustomSplashScreen({super.key});

  //SplashScreenController splashScreenController = SplashScreenController();
  final splashController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Top Animated Icon
            Obx(
              () =>  AnimatedPositioned(
                duration: const Duration(milliseconds: 1600),
                top: splashController.animate.value ? 0 : -30,
                left: splashController.animate.value ? -50 : -100,
                child: Image(
                  image: AssetImage(tSplashTopIcon),
                  width: 300.0,
                  height: 100.0,
                ),
              ),
            ),
            // App Name and Tagline
            Obx(
            () => Positioned(
                top: 100,
                left: tDefaultSize,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 1600),
                  opacity: splashController.animate.value ? 1 : 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        tAppName,
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      Text(
                        tAppTagLine,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Bottom Image
            Positioned(
              bottom: 100,
              left: 0,
              child: Image(
                image: AssetImage(tSplashImage),
                width: 350,
              ),
            ),
            // Circular Decoration at Bottom Right
            Positioned(
              bottom: 40,
              right: tDefaultSize,
              child: Container(
                width: tSplashContainerSize,
                height: tSplashContainerSize,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: tPrimaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


}

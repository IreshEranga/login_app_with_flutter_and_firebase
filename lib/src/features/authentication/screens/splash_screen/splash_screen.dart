import 'package:flutter/material.dart';
import 'package:login_app_with_flutter_and_firebase/src/constants/colors.dart';
import 'package:login_app_with_flutter_and_firebase/src/constants/image_strings.dart';
import 'package:login_app_with_flutter_and_firebase/src/constants/sizes.dart';
import 'package:login_app_with_flutter_and_firebase/src/constants/text_strings.dart';
import 'package:login_app_with_flutter_and_firebase/src/features/authentication/screens/welcome/welcome_screen.dart';

class CustomSplashScreen extends StatefulWidget {
  const CustomSplashScreen({super.key});

  @override
  State<CustomSplashScreen> createState() => _CustomSplashScreenState();
}

class _CustomSplashScreenState extends State<CustomSplashScreen> {
  bool animate = false;

  @override
  void initState() {
    super.initState();
    startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Top Animated Icon
            AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: animate ? 0 : -30,
              left: animate ? -50 : -100,
              child: Image(
                image: AssetImage(tSplashTopIcon),
                width: 300.0,
                height: 100.0,
              ),
            ),
            // App Name and Tagline
            Positioned(
              top: 100,
              left: tDefaultSize,
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

  Future<void> startAnimation() async {
    // Start the animation after a short delay
    await Future.delayed(const Duration(milliseconds: 500));
    setState(() {
      animate = true;
    });

    // Wait for a few seconds before navigating to the Welcome Screen
    await Future.delayed(const Duration(seconds: 5));

    if (mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const Welcome_Screen(),
        ),
      );
    }
  }
}

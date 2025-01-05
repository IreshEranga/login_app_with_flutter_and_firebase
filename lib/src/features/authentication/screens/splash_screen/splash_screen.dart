import 'package:flutter/material.dart';
import 'package:login_app_with_flutter_and_firebase/src/constants/image_strings.dart';
import 'package:login_app_with_flutter_and_firebase/src/constants/sizes.dart';
import 'package:login_app_with_flutter_and_firebase/src/constants/text_strings.dart';



class CustomSplashScreen extends StatelessWidget {
  const CustomSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: -50,
              child: Image(
                image: AssetImage(tSplashTopIcon),
                width: 300.0,
                height: 100.0,
              ),
            ),
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
                  // Text(
                  //   tAppTagLine,
                  //   style: Theme.of(context).textTheme.headlineSmall,
                  // ),
                ],
              ),
            ),
            Positioned(
              bottom: 100,
              left: 0,
              child: Image(
                image: AssetImage(tSplashImage),
                width: 350,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

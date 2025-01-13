// import 'package:flutter/material.dart';
// import 'package:liquid_swipe/liquid_swipe.dart';
// import 'package:login_app_with_flutter_and_firebase/src/constants/colors.dart';
// import 'package:login_app_with_flutter_and_firebase/src/constants/image_strings.dart';
// import 'package:login_app_with_flutter_and_firebase/src/constants/sizes.dart';
// import 'package:login_app_with_flutter_and_firebase/src/constants/text_strings.dart';
// import 'package:login_app_with_flutter_and_firebase/src/features/authentication/models/model_on_boarding.dart';
// import 'package:login_app_with_flutter_and_firebase/src/features/authentication/screens/on_boarding/OnBoardingPageWidget.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
//
// class OnBoardingScreen extends StatelessWidget {
//   const OnBoardingScreen({super.key});
//
//   final controller = LiquidController();
//   int currentPage = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//
//     final pages = [
//       OnBoardingPageWidget(
//           model: OnBoardingModel(
//               image: iOnBoardingImage1,
//               title: iOnBoardingTitle1,
//               subTitle: iOnBoardingSubTitle1,
//               counterText: iOnBoardingCounter1,
//               bgColor: tOnBoardingPage1Color,
//               height: size.height)),
//       OnBoardingPageWidget(
//           model: OnBoardingModel(
//               image: iOnBoardingImage2,
//               title: iOnBoardingTitle2,
//               subTitle: iOnBoardingSubTitle2,
//               counterText: iOnBoardingCounter2,
//               bgColor: tOnBoardingPage2Color,
//               height: size.height)),
//       OnBoardingPageWidget(
//           model: OnBoardingModel(
//               image: iOnBoardingImage3,
//               title: iOnBoardingTitle3,
//               subTitle: iOnBoardingSubTitle3,
//               counterText: iOnBoardingCounter3,
//               bgColor: tOnBoardingPage3Color,
//               height: size.height)),
//     ];
//
//
//
//
//     return Scaffold(
//       body: Stack(
//         alignment: Alignment.center,
//         children: [
//           LiquidSwipe(
//             pages: pages,
//             liquidController: controller,
//             slideIconWidget: const Icon(Icons.arrow_back_ios),
//             enableSideReveal: true,
//             onPageChangeCallback: onPageChangeCallback,
//           ),
//           Positioned(
//               bottom: 60.0,
//               child: OutlinedButton(
//                 onPressed: () {},
//                 style: ElevatedButton.styleFrom(
//                   side: const BorderSide(color: Colors.black26),
//                   shape: const CircleBorder(),
//                   padding: EdgeInsets.all(20),
//                   foregroundColor: Colors.white,
//                 ),
//                 child: Container(
//                   padding: EdgeInsets.all(20.0),
//                   decoration: const BoxDecoration(
//                       color: Colors.black87, shape: BoxShape.circle),
//                   child: const Icon(
//                     Icons.arrow_forward_ios,
//                     color: Colors.white,
//                   ),
//                 ),
//               )),
//           Positioned(
//             top: 50,
//             right: 20,
//             child: TextButton(
//               onPressed: () {},
//               child: const Text(
//                 "Skip",
//                 style: TextStyle(color: Colors.grey),
//               ),
//             ),
//           ),
//           Positioned(
//             bottom: 10,
//               child: AnimatedSmoothIndicator(
//             activeIndex: controller.currentPage,
//             count: 3,
//                 effect: const WormEffect(
//                   activeDotColor: Color(0xff272727),
//                   dotHeight: 5.0
//                 ),
//           ))
//         ],
//       ),
//     );
//   }
//
//   void onPageChangeCallback(int activePageIndex) {
//     currentPage = activePageIndex;
//   }
// }

import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:login_app_with_flutter_and_firebase/src/constants/colors.dart';
import 'package:login_app_with_flutter_and_firebase/src/constants/image_strings.dart';
import 'package:login_app_with_flutter_and_firebase/src/constants/sizes.dart';
import 'package:login_app_with_flutter_and_firebase/src/constants/text_strings.dart';
import 'package:login_app_with_flutter_and_firebase/src/features/authentication/models/model_on_boarding.dart';
import 'package:login_app_with_flutter_and_firebase/src/features/authentication/screens/on_boarding/OnBoardingPageWidget.dart';
import 'package:login_app_with_flutter_and_firebase/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final LiquidController _controller = LiquidController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final pages = [
      OnBoardingPageWidget(
        model: OnBoardingModel(
          image: iOnBoardingImage1,
          title: iOnBoardingTitle1,
          subTitle: iOnBoardingSubTitle1,
          counterText: iOnBoardingCounter1,
          bgColor: tOnBoardingPage1Color,
          height: size.height,
        ),
      ),
      OnBoardingPageWidget(
        model: OnBoardingModel(
          image: iOnBoardingImage2,
          title: iOnBoardingTitle2,
          subTitle: iOnBoardingSubTitle2,
          counterText: iOnBoardingCounter2,
          bgColor: tOnBoardingPage2Color,
          height: size.height,
        ),
      ),
      OnBoardingPageWidget(
        model: OnBoardingModel(
          image: iOnBoardingImage3,
          title: iOnBoardingTitle3,
          subTitle: iOnBoardingSubTitle3,
          counterText: iOnBoardingCounter3,
          bgColor: tOnBoardingPage3Color,
          height: size.height,
        ),
      ),
    ];

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: pages,
            liquidController: _controller,
            slideIconWidget: const Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
            onPageChangeCallback: onPageChangeCallback,
          ),
          Positioned(
            bottom: 60.0,
            child: OutlinedButton(
              onPressed: () {
                if (_controller.currentPage == pages.length - 1) {
                  // Navigate to home screen
                  //Navigator.pushReplacementNamed(context, '/home');
                } else {
                  _controller.animateToPage(page: _controller.currentPage + 1);
                }
              },
              style: ElevatedButton.styleFrom(
                side: const BorderSide(color: Colors.black26),
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
                foregroundColor: Colors.white,
              ),
              child: Container(
                padding: const EdgeInsets.all(20.0),
                decoration: const BoxDecoration(
                  color: Colors.black87,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Welcome_Screen(),
                  ),
                ); // Navigate to home
              },
              child: const Text(
                "Skip",
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            child: AnimatedSmoothIndicator(
              activeIndex: _currentPage,
              count: pages.length,
              effect: const WormEffect(
                activeDotColor: Color(0xff272727),
                dotHeight: 5.0,
                dotWidth: 5.0,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void onPageChangeCallback(int activePageIndex) {
    setState(() {
      _currentPage = activePageIndex;
    });
  }
}

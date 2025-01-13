import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';

class OnBoardingController extends GetxController {
  final LiquidController controller = LiquidController(); // Expose this for LiquidSwipe
  RxInt currentPage = 0.obs; // Reactive state for the current page
}

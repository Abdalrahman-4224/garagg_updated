import 'package:get/get.dart';

class HomeController extends GetxController {
  RxBool isLeftActive = true.obs;

  void handleLeftToggle() {
    isLeftActive.value = true;
  }

  void handleRightToggle() {
    isLeftActive.value = false;
  }
}

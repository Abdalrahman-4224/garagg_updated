import 'package:get/get.dart';

class CustomNavigationController extends GetxController {
  RxInt selectedIndex = 2.obs;

  void changeIndex(int index) {
    selectedIndex.value = index;
  }
}
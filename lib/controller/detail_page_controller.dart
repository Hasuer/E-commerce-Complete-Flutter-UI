import 'package:get/get.dart';

class DetailPageController extends GetxController {
  late int selectedIndex = 0;
  int selectedColorIndex = 0;

  void setSelectedIndex(int index) {
    selectedIndex = index;
    update();
  }

  void setSelectedColorIndex(int index) {
    selectedColorIndex = index;
    update();
  }
}

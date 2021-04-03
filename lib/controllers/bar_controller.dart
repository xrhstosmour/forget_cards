import 'package:get/get.dart';

class BarController extends GetxController {
  final barIndex = 0.obs;
  setIndex(int index) {
    barIndex.value = index;
  }
}

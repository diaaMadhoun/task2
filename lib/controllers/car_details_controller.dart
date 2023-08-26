import 'package:get/get.dart';

class CarDetailsController extends GetxController {
  late RxBool isChecked;

  @override
  void onInit() {
    super.onInit();
    isChecked = false.obs;
  }

  void toggleCheckBox(bool value) {
    isChecked.value = value;
  }
}

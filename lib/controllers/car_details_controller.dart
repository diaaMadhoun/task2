import 'package:get/get.dart';
import 'package:task2/model/cars.dart';
import '../api/api_controller.dart';

class CarDetailsController extends GetxController {
  late bool isChecked;
  Cars car = Cars();
  bool loading = true;
  int carId;

  CarDetailsController(this.carId);


  @override
  void onInit() {
    super.onInit();
    _fetchData();
    isChecked = false;
  }

  void toggleCheckBox(bool value) {
    isChecked = value;
    update();
  }

  Future<void> _fetchData() async {
    car = await ApiController().getCarDetails(carId);
    loading = false;
    update();
  }

}

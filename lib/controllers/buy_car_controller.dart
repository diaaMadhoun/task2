import 'package:get/get.dart';
import '../api/api_controller.dart';
import '../model/cars.dart';

class BuyCarController extends GetxController{

  List<Cars> cars = <Cars>[];
  bool loading = true;



  @override
  void onInit() {
    super.onInit();
    _fetchData();
  }


  Future<void> _fetchData() async {
    cars.assignAll(await ApiController().getCars());
    loading = false;
    update();
  }

}
import 'package:get/get.dart';
import 'package:task2/model/brands.dart';
import '../api/api_controller.dart';


class BrandScreenController extends GetxController{
  List<Brands> brands = <Brands>[];
  bool loading = true;



  @override
  void onInit() {
    super.onInit();
    _fetchData();
  }



  Future<void> _fetchData() async {
    brands.assignAll(await ApiController().getBrands());
    loading = false;
    update();
  }

}
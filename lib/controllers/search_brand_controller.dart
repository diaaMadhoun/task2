import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../api/api_controller.dart';
import '../model/cars.dart';

class SearchBrandController extends GetxController{


  List<Cars> cars = <Cars>[];
  int brandId;
  bool loading = true;
  SearchBrandController(this.brandId);


  @override
  void onInit() {
    super.onInit();
    _fetchData();
  }


  Future<void> _fetchData() async {
    cars.assignAll(await ApiController().getBrandsDetails(brandId));
    loading = false;
    update();
  }

}
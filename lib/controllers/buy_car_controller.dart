import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../api/api_controller.dart';
import '../model/cars.dart';

class BuyCarController extends GetxController{

  final _cars = <Cars>[].obs;
  List<Cars> get cars => _cars;



  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _fetchData();
  }

  Future<void> _fetchData() async {
    _cars.assignAll(await ApiController().getCars());
  }

}
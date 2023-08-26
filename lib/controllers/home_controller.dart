// ignore_for_file: unrelated_type_equality_checks

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:task2/model/brands.dart';
import '../api/api_controller.dart';
import '../model/cars.dart';
import '../model/sliders.dart';

class HomeController extends GetxController{

  RxInt currentPage = 0.obs;
  bool isFirstAutoPlay = true;
  List<Cars>? carsData;
  final  _sliders = <Sliders>[].obs;
  final _brands = <Brands>[].obs;
  final _cars = <Cars>[].obs;


  final PageController pageController = PageController();

  List<Sliders> get sliders => _sliders;
  List<Brands> get brands => _brands;
  List<Cars> get cars => _cars;



  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _fetchData();
    _startAutoPlay(pageController);
  }



  void _startAutoPlay(PageController pageController) {
    const Duration duration = Duration(seconds: 3);
    Timer.periodic(duration, (Timer timer) {
      if (currentPage < 4 - 1) {
        pageController.nextPage(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      } else if (currentPage == 4 - 1) {
        if (isFirstAutoPlay) {
          isFirstAutoPlay = false;
          pageController.jumpToPage(0);
        } else {
          pageController.jumpToPage(0);
        }
      }
    });
  }

  Future<void> _fetchData() async {

    _sliders.assignAll(await ApiController().getSliders());
    _brands.assignAll(await ApiController().getBrands());
    _cars.assignAll(await ApiController().getCars());

  }

}
import  'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../api/api_controller.dart';
import '../model/home.dart';

class HomeController extends GetxController{

  int currentPage = 0;
  bool isFirstAutoPlay = true;
  Home home = Home();
  bool loading = true;


  final PageController pageController = PageController();




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
    home = await ApiController().getHome();
    loading = false;
    update();
  }
}
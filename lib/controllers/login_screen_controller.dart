import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreenController extends GetxController{
  late TextEditingController c1;


  @override
  void onInit() {
    super.onInit();
    c1 = TextEditingController();
  }

  @override
  void dispose() {
    c1.dispose();
    super.dispose();
  }


}
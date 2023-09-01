import 'package:flutter/material.dart';

class ApiSettings{
  static const String _baseUrl = "https://cars-api.ameerabunada.com/api/v1/";
  static const String brands = "${_baseUrl}brands";
  static const String brandsDetails = "${_baseUrl}brands/{id}";
  static const String home = "${_baseUrl}home";
  static const String cars = "${_baseUrl}cars";
  static const String sliders = "${_baseUrl}sliders";
  static const String carsDetails = "${_baseUrl}cars/{id}";
}
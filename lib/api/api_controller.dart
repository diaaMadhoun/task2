import 'dart:convert';
import 'dart:io';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:task2/model/cars.dart';
import 'package:task2/model/home.dart';
import '../model/brands.dart';
import 'api_settings.dart';
import 'package:http/http.dart' as http;


class ApiController{

  Future<List<Brands>> getBrands() async {
    Uri uri = Uri.parse(ApiSettings.brands);
    var response = await http.get(uri);
    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);
      var dataJsonArray = jsonResponse['data'] as List;
      return dataJsonArray.map((jsonObject) => Brands.fromJson(jsonObject)).toList();
    }
    return [];
  }


  Future<List<Cars>> getCars() async {
    Uri uri = Uri.parse(ApiSettings.cars);
    var response = await http.get(uri);
    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);
      var dataJsonArray = jsonResponse['data'] as List;
      return dataJsonArray.map((jsonObject) => Cars.fromJson(jsonObject)).toList();
    }
    return [];
  }



  Future<Home> getHome() async {
    Uri uri = Uri.parse(ApiSettings.home);
    var response = await http.get(uri);
    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);
      return Home.fromJson(jsonResponse);
    }
    return Home();
  }



  Future<Cars> getCarDetails(int id) async {
    Uri uri = Uri.parse(ApiSettings.carsDetails.replaceFirst('{id}', id.toString()));
    var response = await http.get(uri);
    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body)['data'];
      return Cars.fromJson(jsonResponse);
    }
    return Cars();
  }



  Future<List<Cars>> getBrandsDetails(int id) async {
    Uri uri = Uri.parse(ApiSettings.brandsDetails.replaceFirst('{id}', id.toString()));
    var response = await http.get(uri, headers: {HttpHeaders.acceptHeader: "application/json"});
    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);
      var dataJsonArray = jsonResponse['data'] as List;
      return dataJsonArray.map((jsonObject) => Cars.fromJson(jsonObject)).toList();
    }
    return [];
  }

}
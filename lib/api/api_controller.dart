import 'dart:convert';
import 'dart:io';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:task2/model/cars.dart';
import 'package:task2/model/sliders.dart';
import '../model/brands.dart';
import 'api_settings.dart';
import 'package:http/http.dart' as http;


class ApiController extends GetxController {
  final RxList<Brands> _brandsData = <Brands>[].obs;
  final RxList<Sliders> _slidersData = <Sliders>[].obs;
  final RxList<Cars> _carsData = <Cars>[].obs;

  Future<RxList<Brands>> getBrands() async {
    Uri uri = Uri.parse(ApiSettings.brands);
    var response = await http.get(uri);

    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);
      var dataJsonArray = jsonResponse['data'] as List;
      _brandsData.assignAll(dataJsonArray.map((jsonObject) => Brands.fromJson(jsonObject)));
    }
    return _brandsData;
  }

  Future<RxList<Sliders>> getSliders() async {
    Uri uri = Uri.parse(ApiSettings.home);
    var response = await http.get(uri);

    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);
      var dataJsonArray = jsonResponse['data']['sliders'] as List;
      _slidersData.assignAll(dataJsonArray.map((json) => Sliders.fromJson(json)));
    }

    return _slidersData;
  }

  Future<RxList<Cars>> getCars() async {
    String baseUrl = 'https://cars-api.ameerabunada.com/api/v1';
    Uri uri = Uri.parse("$baseUrl/home");
    var response = await http.get(uri, headers: {HttpHeaders.acceptHeader: "application/json"});

    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);
      var dataJsonArray = jsonResponse['data']['cars'] as List;
      _carsData.assignAll(dataJsonArray.map((json) => Cars.fromJson(json)));
    }
    return _carsData;
  }

  Future<RxList<Cars>> getCarDetails(int id) async{
    Uri uri = Uri.parse(ApiSettings.carsDetails.replaceFirst('{id}',id.toString()));
    var response = await http.get(uri, headers: {HttpHeaders.acceptHeader: "application/json"});
    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);
      var dataJsonArray = jsonResponse['data'] as List;
      _carsData.assignAll(dataJsonArray.map((json) => Cars.fromJson(json)));
    }
    return _carsData;
  }


}

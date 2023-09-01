
import 'brands.dart';

class Cars {
late  int id;
late String name;
late String image;
late int? price;
late int stars;
late int? ratingsCount;
late String enginePower;
late String maxTorque;
late String acceleration;
late Brands brand;

  Cars();

  Cars.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    price = json['price'];
    stars = json['stars'];
    ratingsCount = json['ratings_count'];
    enginePower = json['engine_power'];
    maxTorque = json['max_torque'];
    acceleration = json['acceleration'];
    brand = (json['brand'] != null ? Brands.fromJson(json['brand']) : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['image'] = image;
    data['price'] = price;
    data['stars'] = stars;
    data['ratings_count'] = ratingsCount;
    data['engine_power'] = enginePower;
    data['max_torque'] = maxTorque;
    data['acceleration'] = acceleration;
    if (brand != null) {
      data['brand'] = brand!.toJson();
    }
    return data;
  }
}
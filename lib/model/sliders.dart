import 'package:flutter/material.dart';

class Sliders {
 late int id;
 late String image;
 late String title;

 Sliders();

 Sliders.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['image'] = image;
    data['title'] = title;
    return data;
  }
}

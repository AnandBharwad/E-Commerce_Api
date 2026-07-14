import 'package:flutter/foundation.dart';

class EcommerceModel {
  String id;
  String name;
  int price;
  String description;
  String imageUrl;
  num rating;
  String category;

  EcommerceModel({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.imageUrl,
    required this.rating,
    required this.category,
  });

  factory EcommerceModel.fromJson(Map<String, dynamic> json) {
    return EcommerceModel(
      id: json["id"],
      name: json["name"],
      price: json["price"],
      description: json["description"],
      imageUrl: json["imageUrl"],
      rating: json["rating"],
      category: json["category"],
    );
  }
}

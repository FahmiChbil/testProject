// ignore_for_file: file_names

import 'package:testproject/Hotel/domain/entities/Hotel.dart';

class HotelModel extends Hotel {
  const HotelModel(
      {required super.name,
      required super.stars,
      required super.price,
      required super.currency,
      required super.image,
      required super.review_score,
      required super.review,
      required super.address});

  factory HotelModel.fromJson(Map<String, dynamic> json) {
    return HotelModel(
        name: json['name'],
        stars: json['starts'],
        price: json['price'],
        currency: json['currency'],
        image: json['image'],
        review_score: json['review_score'],
        review: json['review'],
        address: json['address']);
  }
}

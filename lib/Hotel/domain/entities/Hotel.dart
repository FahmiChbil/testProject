// ignore_for_file: file_names

import 'package:equatable/equatable.dart';

class Hotel extends Equatable {
  final String name;
  final int stars;
  final int price;
  final String currency;
  final String image;
  final num review_score;
  final String review;
  final String address;

  const Hotel(
      {required this.name,
      required this.stars,
      required this.price,
      required this.currency,
      required this.image,
      required this.review_score,
      required this.review,
      required this.address});

  @override
  List<Object?> get props =>
      [name, stars, price, currency, review_score, image, review, address];
}

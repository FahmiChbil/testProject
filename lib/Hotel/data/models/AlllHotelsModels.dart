// ignore_for_file: file_names

import 'package:testproject/Hotel/data/models/HotelModel.dart';
import 'package:testproject/Hotel/domain/entities/AllHotels.dart';

class AllHotelsModel extends AllHotels {
  const AllHotelsModel({required super.allHotels});

  factory AllHotelsModel.fromJson(List list) {
    return AllHotelsModel(
        allHotels: List.from(list.map((e) => HotelModel.fromJson(e))));
  }
}

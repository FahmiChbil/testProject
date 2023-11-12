import 'dart:convert';

import 'package:testproject/Hotel/data/models/AlllHotelsModels.dart';
import 'package:testproject/Hotel/domain/entities/AllHotels.dart';
import 'package:http/http.dart' as http;
import 'package:testproject/core/String/Url.dart';
import 'package:testproject/core/errors/exceptions.dart';

abstract class HotelremoteDataSource {
  Future<AllHotels> getHotels();
}

class HotelRemoteDataSourceImpl implements HotelremoteDataSource {
  @override
  Future<AllHotels> getHotels() async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      List decodedJson = jsonDecode(response.body);
      AllHotelsModel allHotelsModel = AllHotelsModel.fromJson(decodedJson);

      return allHotelsModel;
    } else {
      throw ServerException();
    }
  }
}

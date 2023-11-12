import 'package:dartz/dartz.dart';
import 'package:testproject/core/errors/Failures.dart';
import 'package:testproject/Hotel/domain/entities/AllHotels.dart';

abstract class HotelRepository {
  Future<Either<Failure, AllHotels>> getHotels();
}

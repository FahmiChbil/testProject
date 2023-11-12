import 'package:dartz/dartz.dart';
import 'package:testproject/Hotel/domain/entities/AllHotels.dart';
import 'package:testproject/Hotel/domain/repositories/hotel_repository.dart';

import '../../../core/errors/Failures.dart';

class GetAllHotelsUseCase {
  final HotelRepository hotelRepository;

  GetAllHotelsUseCase({required this.hotelRepository});

  Future<Either<Failure, AllHotels>> call() async {
    return await hotelRepository.getHotels();
  }
}

import 'package:dartz/dartz.dart';
import 'package:testproject/Hotel/data/datasources/remote_data_source.dart';
import 'package:testproject/Hotel/domain/entities/AllHotels.dart';
import 'package:testproject/Hotel/domain/repositories/hotel_repository.dart';
import 'package:testproject/core/Network/network_info.dart';
import 'package:testproject/core/errors/Failures.dart';
import 'package:testproject/core/errors/exceptions.dart';

class HotelsRepositoryIpml implements HotelRepository {
  final HotelRemoteDataSourceImpl hotelRemoteDataSourceImpl;
  final NetworkInfo networkInfo;

  HotelsRepositoryIpml(
      {required this.hotelRemoteDataSourceImpl, required this.networkInfo});
  @override
  Future<Either<Failure, AllHotels>> getHotels() async {
    if (await networkInfo.isConnected) {
      try {
        final result = await hotelRemoteDataSourceImpl.getHotels();
        return right(result);
      } on ServerException {
        return left(GetHotelsFailure());
      }
    } else {
      throw ServerFailure();
    }
  }
}

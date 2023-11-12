import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:testproject/Hotel/data/datasources/remote_data_source.dart';
import 'package:testproject/Hotel/data/repository/hotels_repository_impl.dart';
import 'package:testproject/Hotel/domain/repositories/hotel_repository.dart';
import 'package:testproject/Hotel/domain/usecases/get_all_hotels_usecase.dart';
import 'package:testproject/Hotel/presentation/bloc/getHotels/get_hotels_cubit.dart';
import 'package:testproject/core/Network/network_info.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //CUBIT
  sl.registerFactory(() => GetHotelsCubit(getAllHotelsuseCase: sl()));

  // usecases

  sl.registerLazySingleton(() => GetAllHotelsUseCase(hotelRepository: sl()));

//repo

  sl.registerLazySingleton<HotelRepository>(() =>
      HotelsRepositoryIpml(hotelRemoteDataSourceImpl: sl(), networkInfo: sl()));

  //datasources
  sl.registerLazySingleton(() => HotelRemoteDataSourceImpl());

  //core

  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  //external
  sl.registerLazySingleton(() => InternetConnectionChecker());
}

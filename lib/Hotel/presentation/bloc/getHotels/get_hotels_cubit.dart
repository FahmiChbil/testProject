import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:testproject/Hotel/domain/entities/AllHotels.dart';
import 'package:testproject/Hotel/domain/usecases/get_all_hotels_usecase.dart';
import 'package:testproject/core/String/failures.dart';
import 'package:testproject/core/errors/Failures.dart';

part 'get_hotels_state.dart';

class GetHotelsCubit extends Cubit<GetHotelsState> {
  GetAllHotelsUseCase getAllHotelsuseCase;
  GetHotelsCubit({required this.getAllHotelsuseCase})
      : super(GetHotelsInitial());
  getAllHotels() async {
    emit(LoadingHotelsState());
    var hotels = await getAllHotelsuseCase();

    emit(hotels.fold(
        (failure) => FailureHotelState(errorMsg: _mapFailureToMessage(failure)),
        (allHotels) => SuccesHotelState(allHotels: allHotels)));
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return SERVER_FAILURE_MESSAGE;

      default:
        return 'unexpected error , please try later ';
    }
  }
}

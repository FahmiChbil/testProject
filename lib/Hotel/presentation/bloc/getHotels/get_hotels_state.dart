part of 'get_hotels_cubit.dart';

sealed class GetHotelsState extends Equatable {
  const GetHotelsState();

  @override
  List<Object> get props => [];
}

final class GetHotelsInitial extends GetHotelsState {}

final class LoadingHotelsState extends GetHotelsState {}

final class SuccesHotelState extends GetHotelsState {
  final AllHotels allHotels;
  const SuccesHotelState({required this.allHotels});
}

final class FailureHotelState extends GetHotelsState {
  final String errorMsg;
  const FailureHotelState({required this.errorMsg});
}

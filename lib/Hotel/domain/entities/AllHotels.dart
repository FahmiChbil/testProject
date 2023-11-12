// ignore_for_file: file_names

import 'package:equatable/equatable.dart';
import 'package:testproject/Hotel/domain/entities/Hotel.dart';

class AllHotels extends Equatable {
  final List<Hotel> allHotels;

  const AllHotels({required this.allHotels});

  @override
  List<Object?> get props => [allHotels];
}

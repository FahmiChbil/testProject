// ignore_for_file: file_names

import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {}

class ServerFailure extends Failure {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class GetHotelsFailure extends Failure {
  @override
  List<Object?> get props => throw UnimplementedError();
}

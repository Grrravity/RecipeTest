import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class PancakeState extends Equatable {
  @override
  List<Object> get props => [];
}

class Creating extends PancakeState {}

class Loading extends PancakeState {}

class Loaded extends PancakeState {}

class Error extends PancakeState {
  final String message;

  Error({required this.message});

  @override
  List<Object> get props => [message];
}

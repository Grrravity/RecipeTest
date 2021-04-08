import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class BodyOState extends Equatable {
  @override
  List<Object> get props => [];
}

class Loading extends BodyOState {}

class Loaded extends BodyOState {}

class Error extends BodyOState {
  final String message;

  Error({required this.message});

  @override
  List<Object> get props => [message];
}

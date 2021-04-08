import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class BodyOEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class LoginPressed extends BodyOEvent {
  final String numberString;

  LoginPressed(this.numberString);

  @override
  List<Object> get props => [numberString];
}

class LogoutPressed extends BodyOEvent {}

class RefreshPressed extends BodyOEvent {}

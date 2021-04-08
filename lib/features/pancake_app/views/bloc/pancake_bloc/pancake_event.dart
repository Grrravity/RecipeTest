import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class PancakeEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class LoginPressed extends PancakeEvent {
  final String numberString;

  LoginPressed(this.numberString);

  @override
  List<Object> get props => [numberString];
}

class LogoutPressed extends PancakeEvent {}

class RefreshPressed extends PancakeEvent {}

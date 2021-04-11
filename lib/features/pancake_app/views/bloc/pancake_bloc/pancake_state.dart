import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:pancakeapp/features/pancake_app/domain/entities/recipe_data.dart';

@immutable
abstract class PancakeState extends Equatable {
  @override
  List<Object> get props => [];
}

class Creating extends PancakeState {}

class Loading extends PancakeState {}

class Loaded extends PancakeState {
  final RecipeData data;

  Loaded({required this.data});

  @override
  List<Object> get props => [data];
}

class Error extends PancakeState {
  final String message;

  Error({required this.message});

  @override
  List<Object> get props => [message];
}

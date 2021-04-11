import 'package:equatable/equatable.dart';
import 'package:pancakeapp/features/pancake_app/data/model/metrics_model.dart';

class RecipeData extends Equatable {
  final String title;
  final Metrics metrics;
  final List<String> instruction;
  final List<String> ingredients;

  RecipeData(
      {required this.title,
      required this.metrics,
      required this.instruction,
      required this.ingredients});

  @override
  List<Object> get props =>
      [title, metrics.toString(), instruction, ingredients];
}

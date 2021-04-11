import 'package:pancakeapp/features/pancake_app/data/model/metrics_model.dart';
import 'package:pancakeapp/features/pancake_app/domain/entities/recipe_data.dart';

class Recipe extends RecipeData {
  Recipe(
      {required title,
      required metrics,
      required instruction,
      required ingredients})
      : super(
            title: title,
            metrics: metrics,
            instruction: instruction,
            ingredients: ingredients);

  factory Recipe.fromJson(Map<String, dynamic> json) {
    return Recipe(
      title: json['title'] ?? "Title unknow",
      metrics: json['data'] != null ? new Metrics.fromJson(json['data']) : null,
      instruction: json['instruction'].cast<String>(),
      ingredients: json['ingredients'].cast<String>(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'data': metrics,
      'instruction': instruction,
      'ingredients': ingredients,
    };
  }
}

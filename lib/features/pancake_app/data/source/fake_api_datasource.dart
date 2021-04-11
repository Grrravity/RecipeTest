import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

import '../../../../core/error/exception.dart';
import '../model/recipe_model.dart';

abstract class FakeApiDataSource {
  Future<Recipe> getRecipe();
}

class FakeApiDataSourceImpl implements FakeApiDataSource {
  @override
  Future<Recipe> getRecipe() =>
      _getRecipeFromJsonFile("assets/json/fakeData.json");

  Future<Recipe> _getRecipeFromJsonFile(String asset) async {
    var jsonString = await rootBundle.loadString(asset);
    await Future.delayed(Duration(seconds: 2));
    if (jsonString.isNotEmpty) {
      return Recipe.fromJson(json.decode(jsonString));
    } else {
      throw AssetException();
    }
  }
}

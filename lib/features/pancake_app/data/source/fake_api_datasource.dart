import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:pancakeapp/core/error/exception.dart';
import 'package:pancakeapp/features/pancake_app/data/model/recipe_model.dart';

abstract class FakeApiDataSource {
  Future<Recipe> getRecipe();
}

class FakeApiDataSourceImpl implements FakeApiDataSource {
  @override
  Future<Recipe> getRecipe() async {
    final String jsonFile = "assets/json/fakeData.json";
    var jsonString = await rootBundle.loadString(jsonFile);
    if (jsonString.isNotEmpty) {
      return Future.value(Recipe.fromJson(json.decode(jsonString)));
    } else {
      throw LocalException();
    }
  }
}

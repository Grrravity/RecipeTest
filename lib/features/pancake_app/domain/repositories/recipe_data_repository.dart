import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/recipe_data.dart';

abstract class RecipeDataRepository {
  Future<Either<Failure, RecipeData>> getRecipeData();
}

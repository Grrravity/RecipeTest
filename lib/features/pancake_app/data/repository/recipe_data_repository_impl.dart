import 'package:dartz/dartz.dart';

import '../../../../core/error/exception.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/entities/recipe_data.dart';
import '../../domain/repositories/recipe_data_repository.dart';
import '../source/fake_api_datasource.dart';

class RecipeDataRepositoryImpl implements RecipeDataRepository {
  final FakeApiDataSource fakeApiDataSource;
  final NetworkInfo networkInfo;

  RecipeDataRepositoryImpl({
    required this.fakeApiDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, RecipeData>> getRecipeData() async {
    return await _getRecipe();
  }

  Future<Either<Failure, RecipeData>> _getRecipe() async {
    try {
      final recipeData = await fakeApiDataSource.getRecipe();
      return Right(recipeData);
    } on AssetException {
      return Left(LocalFailure());
    }
  }
}

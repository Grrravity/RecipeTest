import 'package:dartz/dartz.dart';
import 'package:pancakeapp/features/pancake_app/domain/repositories/recipe_data_repository.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/recipe_data.dart';

class GetRecipeData implements UseCase<RecipeData, NoParams> {
  final RecipeDataRepository repository;

  GetRecipeData(this.repository);

  @override
  Future<Either<Failure, RecipeData>> call(NoParams params) async {
    return await repository.getRecipeData();
  }
}

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:pancakeapp/core/error/failure.dart';
import 'package:pancakeapp/core/usecase/usecase.dart';
import 'package:pancakeapp/features/pancake_app/domain/entities/recipe_data.dart';

import './bloc.dart';
import '../../../domain/usecase/get_recipe_data.dart';

const String SERVER_FAILURE_MESSAGE = 'Server Failure';
const String CACHE_FAILURE_MESSAGE = 'Local Failure';
const String INVALID_DATA_FAILURE_MESSAGE =
    'Invalid data - the asset provided must return Recipe data';

class PancakeBloc extends Bloc<PancakeEvent, PancakeState> {
  final GetRecipeData getRecipeData;

  PancakeBloc({required GetRecipeData recipeData})
      : getRecipeData = recipeData,
        super(Creating());

  @override
  Stream<PancakeState> mapEventToState(
    PancakeEvent event,
  ) async* {
    if (event is ViewCreation) {
      yield Loading();
      final failureOrData = await getRecipeData(NoParams());
      yield* _eitherLoadedOrErrorState(failureOrData);
    }
    if (event is BackPressed) {}
    if (event is MenuPressed) {}
    if (event is RefreshPressed) {}
    if (event is DashboardPressed) {}
    if (event is ExercicesPressed) {}
    if (event is CreationPressed) {}
    if (event is ProfilePressed) {}
  }

  Stream<PancakeState> _eitherLoadedOrErrorState(
    Either<Failure, RecipeData> failureOrData,
  ) async* {
    yield failureOrData.fold(
      (failure) => Error(message: _mapFailureToMessage(failure)),
      (data) => Loaded(data: data),
    );
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return SERVER_FAILURE_MESSAGE;
      case LocalFailure:
        return CACHE_FAILURE_MESSAGE;
      default:
        return 'Unexpected error';
    }
  }
}

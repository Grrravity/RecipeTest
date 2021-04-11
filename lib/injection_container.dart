import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'core/network/network_info.dart';
import 'core/utils/theme.dart';
import 'features/pancake_app/data/repository/recipe_data_repository_impl.dart';
import 'features/pancake_app/data/source/fake_api_datasource.dart';
import 'features/pancake_app/domain/repositories/recipe_data_repository.dart';
import 'features/pancake_app/domain/usecase/get_recipe_data.dart';
import 'features/pancake_app/views/bloc/pancake_bloc/pancake_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //! Features - Pancake_app
  // Bloc
  sl.registerFactory(
    () => PancakeBloc(recipeData: sl()),
  );

  //Usecases
  sl.registerLazySingleton(() => GetRecipeData(sl()));

  // Repository
  sl.registerLazySingleton<RecipeDataRepository>(
    () => RecipeDataRepositoryImpl(
      fakeApiDataSource: sl(),
      networkInfo: sl(),
    ),
  );

  // Data sources
  sl.registerLazySingleton<FakeApiDataSource>(() => FakeApiDataSourceImpl());

  // Core
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));
  sl.registerLazySingleton(() => MyTheme());

  //! External
  sl.registerLazySingleton(() => InternetConnectionChecker());
}

import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:pancakeapp/features/pancake_app/views/bloc/pancake_bloc/pancake_bloc.dart';

import 'core/network/network_info.dart';
import 'core/utils/converter.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Bloc
  sl.registerFactory(
    () => PancakeBloc(converter: sl()),
  );
  // Core
  sl.registerLazySingleton(() => Converter());
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));
  //! External
  sl.registerLazySingleton(() => InternetConnectionChecker());
}

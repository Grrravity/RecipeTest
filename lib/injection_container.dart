import 'package:botest/features/bo_app/views/bloc/bobloc_bloc/bodyo_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'core/network/network_info.dart';
import 'core/utils/converter.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Bloc
  sl.registerFactory(
    () => BodyOBloc(converter: sl()),
  );
  // Core
  sl.registerLazySingleton(() => Converter());
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));
  //! External
  sl.registerLazySingleton(() => InternetConnectionChecker());
}

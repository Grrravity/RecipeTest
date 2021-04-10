import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:pancakeapp/core/utils/converter.dart';

import 'bloc.dart';

const String SERVER_FAILURE_MESSAGE = 'Server Failure';
const String CACHE_FAILURE_MESSAGE = 'Local Failure';
const String INVALID_DATA_FAILURE_MESSAGE =
    'Login Error - information provided cannot grant you access';

class PancakeBloc extends Bloc<PancakeEvent, PancakeState> {
  final Converter converter;

  PancakeBloc({
    required this.converter,
  }) : super(Creating());

  @override
  Stream<PancakeState> mapEventToState(
    PancakeEvent event,
  ) async* {
    if (event is ViewCreation) {
      yield Loading();
      await Future.delayed(Duration(seconds: 2));
      yield Loaded();
    }
    if (event is BackPressed) {}
    if (event is MenuPressed) {}
    if (event is RefreshPressed) {}
    if (event is DashboardPressed) {}
    if (event is ExercicesPressed) {}
    if (event is CreationPressed) {}
    if (event is ProfilePressed) {}
  }
}

import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class PancakeEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class BackPressed extends PancakeEvent {}

class MenuPressed extends PancakeEvent {}

class RefreshPressed extends PancakeEvent {}

class ViewCreation extends PancakeEvent {}

class DashboardPressed extends PancakeEvent {}

class ExercicesPressed extends PancakeEvent {}

class CreationPressed extends PancakeEvent {}

class ProfilePressed extends PancakeEvent {}

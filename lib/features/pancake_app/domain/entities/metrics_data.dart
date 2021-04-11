import 'package:equatable/equatable.dart';

class MetricsData extends Equatable {
  final int likes;
  final int kcal;
  final int mins;

  MetricsData({required this.likes, required this.kcal, required this.mins});

  @override
  List<Object> get props => [likes, kcal, mins];
}

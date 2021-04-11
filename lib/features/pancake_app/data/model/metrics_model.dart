import 'package:pancakeapp/features/pancake_app/domain/entities/metrics_data.dart';

class Metrics extends MetricsData {
  Metrics({required likes, required kcal, required mins})
      : super(likes: likes, kcal: kcal, mins: mins);

  factory Metrics.fromJson(Map<String, dynamic> json) {
    return Metrics(
      likes: json['likes'],
      kcal: json['kcal'],
      mins: json['mins'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'likes': likes, 'kcal': kcal, 'mins': mins};
  }
}

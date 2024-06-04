import 'package:json_annotation/json_annotation.dart';

part 'weight_model.g.dart';

@JsonSerializable()
class WeightModel {
  WeightModel({
    required this.imperial,
    required this.metric,
  });

  factory WeightModel.fromJson(Map<String, dynamic> json) =>
      _$WeightModelFromJson(json);

  final String imperial;

  final String metric;

  Map<String, dynamic> toJson() => _$WeightModelToJson(this);
}

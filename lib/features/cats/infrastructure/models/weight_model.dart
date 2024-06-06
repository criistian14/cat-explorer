import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'weight_model.g.dart';

@JsonSerializable()
class WeightModel extends Equatable {
  const WeightModel({
    this.imperial,
    this.metric,
  });

  final String? imperial;
  final String? metric;

  factory WeightModel.fromJson(Map json) => _$WeightModelFromJson(json);

  Map<String, dynamic> toJson() => _$WeightModelToJson(this);

  @override
  List<Object?> get props => [
        imperial,
        metric,
      ];
}

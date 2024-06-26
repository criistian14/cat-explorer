import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'image_breed_model.g.dart';

@JsonSerializable()
class ImageBreedModel extends Equatable {
  const ImageBreedModel({
    this.id,
    this.width,
    this.height,
    this.url,
  });

  final String? id;
  final int? width;
  final int? height;
  final String? url;

  factory ImageBreedModel.fromJson(Map json) => _$ImageBreedModelFromJson(json);

  Map<String, dynamic> toJson() => _$ImageBreedModelToJson(this);

  @override
  List<Object?> get props => [
        id,
        width,
        height,
        url,
      ];
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_breed_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageBreedModel _$ImageBreedModelFromJson(Map json) => ImageBreedModel(
      id: json['id'] as String?,
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      url: json['url'] as String?,
    );

Map<String, dynamic> _$ImageBreedModelToJson(ImageBreedModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'width': instance.width,
      'height': instance.height,
      'url': instance.url,
    };

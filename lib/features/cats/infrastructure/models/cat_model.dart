import 'package:cat_explorer/features/cats/cats.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cat_model.g.dart';

@JsonSerializable()
class CatModel {
  const CatModel({
    required this.weight,
    required this.id,
    required this.name,
    required this.cfaUrl,
    required this.vetstreetUrl,
    required this.vcahospitalsUrl,
    required this.temperament,
    required this.origin,
    required this.countryCodes,
    required this.countryCode,
    required this.description,
    required this.lifeSpan,
    required this.indoor,
    required this.lap,
    required this.altNames,
    required this.adaptability,
    required this.affectionLevel,
    required this.childFriendly,
    required this.dogFriendly,
    required this.energyLevel,
    required this.grooming,
    required this.healthIssues,
    required this.intelligence,
    required this.sheddingLevel,
    required this.socialNeeds,
    required this.strangerFriendly,
    required this.vocalisation,
    required this.experimental,
    required this.hairless,
    required this.natural,
    required this.rare,
    required this.rex,
    required this.suppressedTail,
    required this.shortLegs,
    required this.wikipediaUrl,
    required this.hypoallergenic,
    required this.referenceImageId,
  });

  factory CatModel.fromJson(Map<String, dynamic> json) =>
      _$CatModelFromJson(json);

  final WeightModel weight;

  final String id;

  final String name;

  final String cfaUrl;

  final String vetstreetUrl;

  final String vcahospitalsUrl;

  final String temperament;

  final String origin;

  final String countryCodes;

  final String countryCode;

  final String description;

  final String lifeSpan;

  final int indoor;

  final int lap;

  final String altNames;

  final int adaptability;

  final int affectionLevel;

  final int childFriendly;

  final int dogFriendly;

  final int energyLevel;

  final int grooming;

  final int healthIssues;

  final int intelligence;

  final int sheddingLevel;

  final int socialNeeds;

  final int strangerFriendly;

  final int vocalisation;

  final int experimental;

  final int hairless;

  final int natural;

  final int rare;

  final int rex;

  final int suppressedTail;

  final int shortLegs;

  final String wikipediaUrl;

  final int hypoallergenic;

  final String referenceImageId;

  Map<String, dynamic> toJson() => _$CatModelToJson(this);
}

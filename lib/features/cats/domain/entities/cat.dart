part of 'entities.dart';

@freezed
class Cat with _$Cat {
  const factory Cat({
    required Weight weight,
    required String id,
    required String name,
    required String cfaUrl,
    required String vetstreetUrl,
    required String vcahospitalsUrl,
    required String temperament,
    required String origin,
    required String countryCodes,
    required String countryCode,
    required String description,
    required String lifeSpan,
    required int indoor,
    required int lap,
    required String altNames,
    required int adaptability,
    required int affectionLevel,
    required int childFriendly,
    required int dogFriendly,
    required int energyLevel,
    required int grooming,
    required int healthIssues,
    required int intelligence,
    required int sheddingLevel,
    required int socialNeeds,
    required int strangerFriendly,
    required int vocalisation,
    required int experimental,
    required int hairless,
    required int natural,
    required int rare,
    required int rex,
    required int suppressedTail,
    required int shortLegs,
    required String wikipediaUrl,
    required int hypoallergenic,
    required String referenceImageId,
  }) = _Cat;
}

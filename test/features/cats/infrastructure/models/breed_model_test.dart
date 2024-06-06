import 'dart:convert';

import 'package:cat_explorer/features/cats/cats.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../helpers/helpers.dart';

void main() {
  const tBreedModel = BreedModel(
    weight: WeightModel(imperial: '8 - 15', metric: '4 - 7'),
    id: 'asho',
    name: 'American Shorthair',
    cfaUrl: 'http://cfa.org/Breeds/BreedsAB/AmericanShorthair.aspx',
    vetstreetUrl: 'http://www.vetstreet.com/cats/american-shorthair',
    vcahospitalsUrl:
        'https://vcahospitals.com/know-your-pet/cat-breeds/american-shorthair',
    temperament: 'Active, Curious, Easy Going, Playful, Calm',
    origin: 'United States',
    countryCodes: 'US',
    countryCode: 'US',
    description:
        'The American Shorthair is known for its longevity, robust health, good looks, sweet personality, and amiability with children, dogs, and other pets.',
    lifeSpan: '15 - 17',
    indoor: 0,
    lap: 1,
    altNames: 'Domestic Shorthair',
    adaptability: 5,
    affectionLevel: 5,
    childFriendly: 4,
    dogFriendly: 5,
    energyLevel: 3,
    grooming: 1,
    healthIssues: 3,
    intelligence: 3,
    sheddingLevel: 3,
    socialNeeds: 4,
    strangerFriendly: 3,
    vocalisation: 3,
    experimental: 0,
    hairless: 0,
    natural: 1,
    rare: 0,
    rex: 0,
    suppressedTail: 0,
    shortLegs: 0,
    wikipediaUrl: 'https://en.wikipedia.org/wiki/American_Shorthair',
    hypoallergenic: 0,
    referenceImageId: 'JFPROfGtQ',
    image: ImageBreedModel(
      id: 'JFPROfGtQ',
      width: 1600,
      height: 1200,
      url: 'https://cdn2.thecatapi.com/images/JFPROfGtQ.jpg',
    ),
  );

  group('fromJson', () {
    test(
      'should return a valid breed model',
      () async {
        // arrange
        final jsonMap = jsonDecode(readFile('breed.json'));
        expect(jsonMap, isA<Map<dynamic, dynamic>>());

        // act
        final result = BreedModel.fromJson(jsonMap as Map);

        // assert
        expect(result, isA<BreedModel>());
        expect(result, tBreedModel);
      },
    );
  });
}

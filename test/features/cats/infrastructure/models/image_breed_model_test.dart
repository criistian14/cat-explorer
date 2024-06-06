import 'dart:convert';

import 'package:cat_explorer/features/cats/cats.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../helpers/helpers.dart';

void main() {
  const tImageBreedModel = ImageBreedModel(
    id: 'JFPROfGtQ',
    width: 1600,
    height: 1200,
    url: 'https://cdn2.thecatapi.com/images/JFPROfGtQ.jpg',
  );

  group('fromJson', () {
    test(
      'should return a valid image breed model',
      () async {
        // arrange
        final jsonMap = jsonDecode(readFile('image.json'));
        expect(jsonMap, isA<Map<dynamic, dynamic>>());

        // act
        final result = ImageBreedModel.fromJson(jsonMap as Map);

        // assert
        expect(result, isA<ImageBreedModel>());
        expect(result, tImageBreedModel);
      },
    );
  });
}

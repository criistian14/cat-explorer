import 'dart:convert';

import 'package:cat_explorer/features/cats/cats.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../helpers/helpers.dart';

void main() {
  const tWeightModel = WeightModel(
    imperial: '8 - 15',
    metric: '4 - 7',
  );

  group('fromJson', () {
    test(
      'should return a valid weight model',
      () async {
        // arrange
        final jsonMap = jsonDecode(readFile('weight.json'));
        expect(jsonMap, isA<Map<dynamic, dynamic>>());

        // act
        final result = WeightModel.fromJson(jsonMap as Map);

        // assert
        expect(result, isA<WeightModel>());
        expect(result, tWeightModel);
      },
    );
  });
}

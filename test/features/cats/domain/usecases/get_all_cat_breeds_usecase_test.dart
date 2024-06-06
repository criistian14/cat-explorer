import 'dart:convert';

import 'package:cat_explorer/config/types/typedef.dart';
import 'package:cat_explorer/config/usecase.dart';
import 'package:cat_explorer/features/cats/cats.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../helpers/helpers.dart';

class MockCatRepository extends Mock implements CatRepository {}

void main() {
  late GetAllCatBreedsUseCase getAllCatBreedsUseCase;
  late MockCatRepository mockCatRepository;

  setUp(() {
    mockCatRepository = MockCatRepository();
    getAllCatBreedsUseCase = GetAllCatBreedsUseCase(
      catRepository: mockCatRepository,
    );
  });

  test(
    'should return a Success Breed list',
    () async {
      // arrange
      final jsonMap = jsonDecode(readFile('breeds.json'));
      final tBreeds = (jsonMap as List)
          .map((e) => BreedModel.fromJson(e as Map))
          .map(BreedMapper.breedModelToEntity)
          .toList();

      when(() => mockCatRepository.getAllBreeds())
          .thenAnswer((_) async => Success(tBreeds));

      // act
      final result = await getAllCatBreedsUseCase(const NoParams());

      // assert
      expect(result, isA<Success<List<Breed>>>());
      expect((result as Success<List<Breed>>).value.length, equals(5));
      expect(result, Success(tBreeds));
    },
  );
}

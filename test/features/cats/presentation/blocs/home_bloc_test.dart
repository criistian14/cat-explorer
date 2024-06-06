import 'dart:convert';

import 'package:bloc_test/bloc_test.dart';
import 'package:cat_explorer/config/types/typedef.dart';
import 'package:cat_explorer/config/usecase.dart';
import 'package:cat_explorer/features/cats/cats.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../helpers/helpers.dart';

class MockGetAllCatBreedsUseCase extends Mock
    implements GetAllCatBreedsUseCase {}

class MockGetBreedCategoriesUseCase extends Mock
    implements GetBreedCategoriesUseCase {}

void main() {
  late MockGetAllCatBreedsUseCase mockGetAllCatBreedsUseCase;
  late MockGetBreedCategoriesUseCase mockGetBreedCategoriesUseCase;
  late HomeBloc homeBloc;

  setUp(() {
    mockGetAllCatBreedsUseCase = MockGetAllCatBreedsUseCase();
    mockGetBreedCategoriesUseCase = MockGetBreedCategoriesUseCase();

    homeBloc = HomeBloc(
      getAllCatBreedsUseCase: mockGetAllCatBreedsUseCase,
      getBreedCategoriesUseCase: mockGetBreedCategoriesUseCase,
    );

    registerFallbackValue(const NoParams());
  });

  group('HomeBloc', () {
    const tState = HomeState();

    final jsonMap = jsonDecode(readFile('breeds.json'));
    final tBreeds = (jsonMap as List)
        .map((e) => BreedModel.fromJson(e as Map))
        .map(BreedMapper.breedModelToEntity)
        .toList();

    blocTest<HomeBloc, HomeState>(
      'emits Success Breed list when loadedBreeds is called',
      build: () => homeBloc,
      setUp: () async {
        when(() => mockGetAllCatBreedsUseCase(any())).thenAnswer(
          (_) async => Success<List<Breed>>(tBreeds),
        );

        when(() => mockGetBreedCategoriesUseCase(any())).thenAnswer(
          (_) async => const Success<List<Category>>([]),
        );
      },
      act: (bloc) => bloc.add(const HomeEvent.loadedBreeds()),
      expect: () => [
        tState.copyWith(
          status: HomeStatus.loading,
        ),
        tState.copyWith(
          breeds: tBreeds,
          status: HomeStatus.success,
        ),
      ],
    );
  });
}

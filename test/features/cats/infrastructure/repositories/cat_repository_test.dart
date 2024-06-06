import 'dart:convert';

import 'package:cat_explorer/config/network_info.dart';
import 'package:cat_explorer/config/types/typedef.dart';
import 'package:cat_explorer/features/cats/cats.dart';
import 'package:cat_explorer/features/shared/shared.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../helpers/helpers.dart';

class MockCatRemoteDataSource extends Mock implements CatRemoteDataSource {}

class MockNetworkInfo extends Mock implements NetworkInfo {}

void main() {
  late CatRepositoryImpl repository;
  late MockCatRemoteDataSource mockCatRemoteDataSource;
  late MockNetworkInfo mockNetworkInfo;

  setUp(() {
    mockNetworkInfo = MockNetworkInfo();
    mockCatRemoteDataSource = MockCatRemoteDataSource();
    repository = CatRepositoryImpl(
      networkInfo: mockNetworkInfo,
      remoteDataSource: mockCatRemoteDataSource,
    );
  });

  group('getAllBreeds', () {
    test(
      'should return a Success with Breed list data',
      () async {
        // arrange
        when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => true);

        final jsonMap = jsonDecode(readFile('breeds.json'));
        final tBreeds = (jsonMap as List)
            .map((e) => BreedModel.fromJson(e as Map))
            .map(BreedMapper.breedModelToEntity)
            .toList();

        when(() => mockCatRemoteDataSource.getBreeds())
            .thenAnswer((_) async => tBreeds);

        // act
        final result = await repository.getAllBreeds();

        // assert
        verify(() => mockNetworkInfo.isConnected).called(1);
        verify(() => mockCatRemoteDataSource.getBreeds()).called(1);
        expect(result, isA<Success<List<Breed>>>());
        expect(result, Success(tBreeds));
      },
    );

    test(
      'should return a Failure with NoInternetConnection when is not internet connection',
      () async {
        // arrange
        when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => false);

        // act
        final result = await repository.getAllBreeds();

        // assert
        verify(() => mockNetworkInfo.isConnected).called(1);
        verifyNever(() => mockCatRemoteDataSource.getBreeds());
        expect(result, isA<Failure<List<Breed>>>());
        expect(result, const Failure<List<Breed>>(NoInternetConnection()));
      },
    );

    test(
      'should return a Failure with EndPointError when has error in remote datasource',
      () async {
        // arrange
        when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => true);
        when(() => mockCatRemoteDataSource.getBreeds())
            .thenThrow(const EndPointError(code: 400, endpoint: ''));

        // act
        final result = await repository.getAllBreeds();

        // assert
        verify(() => mockNetworkInfo.isConnected).called(1);
        verify(() => mockCatRemoteDataSource.getBreeds()).called(1);
        expect(result, isA<Failure<List<Breed>>>());
        expect(
          result,
          const Failure<List<Breed>>(
            EndPointError(
              code: 400,
              endpoint: '',
            ),
          ),
        );
      },
    );
  });
}

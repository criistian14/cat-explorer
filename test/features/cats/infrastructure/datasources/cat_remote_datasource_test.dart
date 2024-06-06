import 'dart:convert';

import 'package:cat_explorer/features/cats/cats.dart';
import 'package:cat_explorer/features/shared/shared.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../helpers/helpers.dart';

class MockHttpService extends Mock implements HttpService {}

void main() {
  late CatApiDataSourceImpl dataSource;
  late MockHttpService mockHttpService;

  setUp(() {
    registerFallbackValue(HttpMethods.get);

    mockHttpService = MockHttpService();
    dataSource = CatApiDataSourceImpl(httpService: mockHttpService);
  });

  void setUpMockHttpServiceSuccess() {
    final jsonMap = jsonDecode(readFile('breeds.json'));

    when(
      () => mockHttpService.makeRequest<List<dynamic>>(
        endpoint: any(named: 'endpoint'),
        name: any(named: 'name'),
        needAuth: any(named: 'needAuth'),
      ),
    ).thenAnswer((_) async => (200, jsonMap as List));
  }

  void setUpMockHttpServiceFailure() {
    when(
      () => mockHttpService.makeRequest<List<dynamic>>(
        endpoint: any(named: 'endpoint'),
        name: any(named: 'name'),
        needAuth: any(named: 'needAuth'),
      ),
    ).thenAnswer((_) async => (400, null));

    when(
      () => mockHttpService.validateCommonErrors(
        any(),
        any<dynamic>(),
        name: any(named: 'name'),
      ),
    ).thenThrow(const EndPointError(code: 400, endpoint: ''));
  }

  group('getBreeds', () {
    test(
      'should return a list of breeds successful',
      () async {
        // arrange
        setUpMockHttpServiceSuccess();

        final jsonMap = jsonDecode(readFile('breeds.json'));
        final tBreeds = (jsonMap as List)
            .map((e) => BreedModel.fromJson(e as Map))
            .map(BreedMapper.breedModelToEntity)
            .toList();

        // act
        final result = await dataSource.getBreeds();

        // assert
        verify(
          () => mockHttpService.makeRequest<List<dynamic>>(
            endpoint: any(named: 'endpoint'),
            name: any(named: 'name'),
            needAuth: any(named: 'needAuth'),
            method: any(named: 'method'),
            headers: any(named: 'headers'),
            body: any(named: 'body'),
          ),
        ).called(1);

        verify(
          () => mockHttpService.validateCommonErrors(
            any(),
            any<dynamic>(),
            name: any(named: 'name'),
          ),
        ).called(1);

        expect(result, tBreeds);
      },
    );

    test(
      'should throw a EndPointError when the response not failure',
      () async {
        // arrange
        setUpMockHttpServiceFailure();

        // act
        final call = dataSource.getBreeds;

        // assert
        expect(call, throwsA(isA<EndPointError>()));
      },
    );
  });
}

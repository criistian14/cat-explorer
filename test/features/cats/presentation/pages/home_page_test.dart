import 'dart:convert';

import 'package:bloc_test/bloc_test.dart';
import 'package:cat_explorer/config/types/typedef.dart';
import 'package:cat_explorer/config/usecase.dart';
import 'package:cat_explorer/features/cats/cats.dart';
import 'package:cat_explorer/injection/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../helpers/helpers.dart';

class MockHomeBloc extends MockBloc<HomeEvent, HomeState> implements HomeBloc {}

class MockSearchBloc extends MockBloc<SearchEvent, SearchState>
    implements SearchBloc {}

class FakeHomeEvent extends Fake implements HomeEvent {}

class FakeHomeState extends Fake implements HomeState {}

class FakeSearchEvent extends Fake implements SearchEvent {}

class FakeSearchState extends Fake implements SearchState {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late MockHomeBloc mockHomeBloc;
  late MockSearchBloc mockSearchBloc;
  late GetBreedCategoriesUseCase getBreedCategoriesUseCase;

  setUp(() {
    mockHomeBloc = MockHomeBloc();
    mockSearchBloc = MockSearchBloc();
    getBreedCategoriesUseCase = const GetBreedCategoriesUseCase();

    sl
      ..registerFactory<HomeBloc>(() => mockHomeBloc)
      ..registerFactory<SearchBloc>(() => mockSearchBloc)
      ..registerSingleton<bool>(true, instanceName: nameTestMode);

    registerFallbackValue(FakeHomeEvent());
    registerFallbackValue(FakeHomeState());
    registerFallbackValue(FakeSearchEvent());
    registerFallbackValue(FakeSearchState());
  });

  testGoldens(
    'Should render successful Home Page with Breeds',
    (tester) async {
      final jsonMap = jsonDecode(readFile('breeds.json'));
      final tBreeds = (jsonMap as List)
          .map((e) => BreedModel.fromJson(e as Map))
          .map(BreedMapper.breedModelToEntity)
          .toList();

      final tCategories = await getBreedCategoriesUseCase(const NoParams());

      const state = HomeState();
      whenListen(
        mockHomeBloc,
        Stream.fromIterable([
          state.copyWith(
            status: HomeStatus.loading,
          ),
          state.copyWith(
            status: HomeStatus.success,
            breeds: tBreeds,
            categories: tCategories.getSuccessValue(),
          ),
        ]),
        initialState: state,
      );

      when(() => mockHomeBloc.add(any())).thenReturn(null);
      when(() => mockSearchBloc.add(any())).thenReturn(null);

      await tester.pumpWidgetGolden(
        MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => sl<SearchBloc>(),
            ),
          ],
          child: Builder(
            builder: (_) {
              return const HomePage();
            },
          ),
        ),
      );

      await multiScreenGolden(tester, 'home_page');
    },
  );
}

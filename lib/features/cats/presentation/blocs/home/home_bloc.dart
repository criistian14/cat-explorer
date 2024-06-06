import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cat_explorer/config/types/typedef.dart';
import 'package:cat_explorer/config/usecase.dart';
import 'package:cat_explorer/features/cats/cats.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({
    required GetAllCatBreedsUseCase getAllCatBreedsUseCase,
    required GetBreedCategoriesUseCase getBreedCategoriesUseCase,
  })  : _getAllCatBreedsUseCase = getAllCatBreedsUseCase,
        _getBreedCategoriesUseCase = getBreedCategoriesUseCase,
        super(const HomeState()) {
    on<_LoadedBreeds>(_loadedBreeds);
    on<_CategorySelected>(_categorySelected);
    on<_ScrollChanged>(_scrollChanged);
    on<_ScrolledToTop>(_scrolledToTop);
  }

  final GetAllCatBreedsUseCase _getAllCatBreedsUseCase;
  final GetBreedCategoriesUseCase _getBreedCategoriesUseCase;

  FutureOr<void> _loadedBreeds(
    _LoadedBreeds event,
    Emitter<HomeState> emit,
  ) async {
    if (state.status == HomeStatus.loading) return;
    emit(state.copyWith(status: HomeStatus.loading));

    final response = await _getAllCatBreedsUseCase(const NoParams());
    if (response.isFailure) {
      final error = response.getException();
      emit(
        state.copyWith(
          status: HomeStatus.failure,
          error: error,
        ),
      );
      return;
    }

    final breeds = response.getSuccessValue();

    final responseCategories =
        await _getBreedCategoriesUseCase(const NoParams());
    if (responseCategories.isFailure) {
      final error = response.getException();
      emit(
        state.copyWith(
          status: HomeStatus.failure,
          error: error,
        ),
      );
      return;
    }

    final categories = responseCategories.getSuccessValue();

    emit(
      state.copyWith(
        status: HomeStatus.success,
        breeds: breeds,
        categories: categories,
      ),
    );
  }

  FutureOr<void> _categorySelected(
    _CategorySelected event,
    Emitter<HomeState> emit,
  ) async {
    if (state.categorySelected == event.category) {
      emit(state.copyWith(categorySelected: null));
      return;
    }

    emit(state.copyWith(categorySelected: event.category));
  }

  FutureOr<void> _scrollChanged(
    _ScrollChanged event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(scrollPosition: event.position));
  }

  FutureOr<void> _scrolledToTop(
    _ScrolledToTop event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(shouldScrollToTop: true));
    emit(state.copyWith(shouldScrollToTop: false)); // * Reset State
  }
}

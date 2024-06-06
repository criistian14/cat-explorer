part of 'home_bloc.dart';

enum HomeStatus {
  initial,
  loading,
  success,
  failure,
}

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(HomeStatus.initial) HomeStatus status,
    Exception? error,
    @Default([]) List<Breed> breeds,
    @Default([]) List<Category> categories,
    Category? categorySelected,
    @Default(0) double scrollPosition,
    @Default(false) bool shouldScrollToTop,
  }) = _HomeState;

  const HomeState._();

  List<Breed> get breedsBelongToCategory =>
      breeds.where((element) => element.applyFilter(categorySelected)).toList();
}

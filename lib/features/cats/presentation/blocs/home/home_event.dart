part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.loadedBreeds() = _LoadedBreeds;

  const factory HomeEvent.categorySelected(
    Category category,
  ) = _CategorySelected;

  const factory HomeEvent.scrollChanged(double position) = _ScrollChanged;

  const factory HomeEvent.scrolledToTop() = _ScrolledToTop;
}

part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    @Default([]) List<Breed> breeds,
    @Default([]) List<SuggestionBreed> breedSuggestions,
    @Default([]) List<String> breedPastSearches,
    @Default([]) List<Breed> breedsFounded,
  }) = _State;
}

part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.breedsChanged(List<Breed> breeds) = _BreedsChanged;

  const factory SearchEvent.suggestionChanged(String query) =
      _SuggestionChanged;

  const factory SearchEvent.breedsFounded(String search) = _BreedsFounded;
}

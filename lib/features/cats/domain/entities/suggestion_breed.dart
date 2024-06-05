part of 'entities.dart';

@freezed
class SuggestionBreed with _$SuggestionBreed {
  const factory SuggestionBreed({
    required String name,
    @Default(false) bool isFromPastSearches,
  }) = _SuggestionBreed;
}

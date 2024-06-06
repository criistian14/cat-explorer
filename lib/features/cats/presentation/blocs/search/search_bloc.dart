import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cat_explorer/features/cats/cats.dart';
import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_bloc.freezed.dart';
part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(const SearchState()) {
    on<_BreedsChanged>(_breedsChanged);
    on<_SuggestionChanged>(_suggestionChanged);
    on<_BreedsFounded>(_breedsFounded);
  }

  FutureOr<void> _breedsChanged(
    _BreedsChanged event,
    Emitter<SearchState> emit,
  ) {
    emit(state.copyWith(breeds: event.breeds));
  }

  FutureOr<void> _suggestionChanged(
    _SuggestionChanged event,
    Emitter<SearchState> emit,
  ) {
    final actualPastSearches = state.breedPastSearches.toList();
    final newSuggestions = <SuggestionBreed>[];
    final query = event.query;

    for (final pastSearch in actualPastSearches) {
      if (pastSearch.toLowerCase().contains(query.toLowerCase())) {
        newSuggestions.add(
          SuggestionBreed(
            name: pastSearch,
            isFromPastSearches: true,
          ),
        );
      }

      if (newSuggestions.length >= 4) break;
    }

    if (state.breeds.isEmpty) {
      emit(state.copyWith(breedSuggestions: newSuggestions));
      return null;
    }

    final breeds = state.breeds.toList();
    final suggestionExist = <SuggestionBreed>[];

    for (final breed in breeds) {
      final name = breed.name;
      if (name == null) continue;

      if (name.toLowerCase().contains(query.toLowerCase())) {
        final alreadyExist = newSuggestions
                .firstWhereOrNull((element) => element.name == name) !=
            null;
        if (alreadyExist) continue;

        suggestionExist.add(SuggestionBreed(name: name));
      }

      if (suggestionExist.length >= 8) break;
    }

    newSuggestions.addAll(suggestionExist);

    emit(
      state.copyWith(
        breedSuggestions: newSuggestions.toSet().toList(),
      ),
    );
  }

  FutureOr<void> _breedsFounded(
    _BreedsFounded event,
    Emitter<SearchState> emit,
  ) {
    final actualPastSearches = state.breedPastSearches.toList();
    final search = event.search;
    if (!actualPastSearches.contains(search)) {
      actualPastSearches.add(search);
    }

    if (state.breeds.isEmpty) {
      emit(state.copyWith(breedPastSearches: actualPastSearches));
      return null;
    }

    final breeds = state.breeds.toList();
    final breedsFounded = breeds
        .where(
          (element) =>
              (element.name ?? '').toLowerCase().contains(search.toLowerCase()),
        )
        .toList();

    emit(
      state.copyWith(
        breedPastSearches: actualPastSearches,
        breedsFounded: breedsFounded,
      ),
    );
  }
}

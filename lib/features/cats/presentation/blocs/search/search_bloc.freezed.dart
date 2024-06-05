// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Breed> breeds) breedsChanged,
    required TResult Function(String query) suggestionChanged,
    required TResult Function(String search) breedsFounded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Breed> breeds)? breedsChanged,
    TResult? Function(String query)? suggestionChanged,
    TResult? Function(String search)? breedsFounded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Breed> breeds)? breedsChanged,
    TResult Function(String query)? suggestionChanged,
    TResult Function(String search)? breedsFounded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BreedsChanged value) breedsChanged,
    required TResult Function(_SuggestionChanged value) suggestionChanged,
    required TResult Function(_BreedsFounded value) breedsFounded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BreedsChanged value)? breedsChanged,
    TResult? Function(_SuggestionChanged value)? suggestionChanged,
    TResult? Function(_BreedsFounded value)? breedsFounded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BreedsChanged value)? breedsChanged,
    TResult Function(_SuggestionChanged value)? suggestionChanged,
    TResult Function(_BreedsFounded value)? breedsFounded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BreedsChangedImplCopyWith<$Res> {
  factory _$$BreedsChangedImplCopyWith(
          _$BreedsChangedImpl value, $Res Function(_$BreedsChangedImpl) then) =
      __$$BreedsChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Breed> breeds});
}

/// @nodoc
class __$$BreedsChangedImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$BreedsChangedImpl>
    implements _$$BreedsChangedImplCopyWith<$Res> {
  __$$BreedsChangedImplCopyWithImpl(
      _$BreedsChangedImpl _value, $Res Function(_$BreedsChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? breeds = null,
  }) {
    return _then(_$BreedsChangedImpl(
      null == breeds
          ? _value._breeds
          : breeds // ignore: cast_nullable_to_non_nullable
              as List<Breed>,
    ));
  }
}

/// @nodoc

class _$BreedsChangedImpl implements _BreedsChanged {
  const _$BreedsChangedImpl(final List<Breed> breeds) : _breeds = breeds;

  final List<Breed> _breeds;
  @override
  List<Breed> get breeds {
    if (_breeds is EqualUnmodifiableListView) return _breeds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_breeds);
  }

  @override
  String toString() {
    return 'SearchEvent.breedsChanged(breeds: $breeds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BreedsChangedImpl &&
            const DeepCollectionEquality().equals(other._breeds, _breeds));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_breeds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BreedsChangedImplCopyWith<_$BreedsChangedImpl> get copyWith =>
      __$$BreedsChangedImplCopyWithImpl<_$BreedsChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Breed> breeds) breedsChanged,
    required TResult Function(String query) suggestionChanged,
    required TResult Function(String search) breedsFounded,
  }) {
    return breedsChanged(breeds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Breed> breeds)? breedsChanged,
    TResult? Function(String query)? suggestionChanged,
    TResult? Function(String search)? breedsFounded,
  }) {
    return breedsChanged?.call(breeds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Breed> breeds)? breedsChanged,
    TResult Function(String query)? suggestionChanged,
    TResult Function(String search)? breedsFounded,
    required TResult orElse(),
  }) {
    if (breedsChanged != null) {
      return breedsChanged(breeds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BreedsChanged value) breedsChanged,
    required TResult Function(_SuggestionChanged value) suggestionChanged,
    required TResult Function(_BreedsFounded value) breedsFounded,
  }) {
    return breedsChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BreedsChanged value)? breedsChanged,
    TResult? Function(_SuggestionChanged value)? suggestionChanged,
    TResult? Function(_BreedsFounded value)? breedsFounded,
  }) {
    return breedsChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BreedsChanged value)? breedsChanged,
    TResult Function(_SuggestionChanged value)? suggestionChanged,
    TResult Function(_BreedsFounded value)? breedsFounded,
    required TResult orElse(),
  }) {
    if (breedsChanged != null) {
      return breedsChanged(this);
    }
    return orElse();
  }
}

abstract class _BreedsChanged implements SearchEvent {
  const factory _BreedsChanged(final List<Breed> breeds) = _$BreedsChangedImpl;

  List<Breed> get breeds;
  @JsonKey(ignore: true)
  _$$BreedsChangedImplCopyWith<_$BreedsChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuggestionChangedImplCopyWith<$Res> {
  factory _$$SuggestionChangedImplCopyWith(_$SuggestionChangedImpl value,
          $Res Function(_$SuggestionChangedImpl) then) =
      __$$SuggestionChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SuggestionChangedImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$SuggestionChangedImpl>
    implements _$$SuggestionChangedImplCopyWith<$Res> {
  __$$SuggestionChangedImplCopyWithImpl(_$SuggestionChangedImpl _value,
      $Res Function(_$SuggestionChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SuggestionChangedImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SuggestionChangedImpl implements _SuggestionChanged {
  const _$SuggestionChangedImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchEvent.suggestionChanged(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuggestionChangedImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuggestionChangedImplCopyWith<_$SuggestionChangedImpl> get copyWith =>
      __$$SuggestionChangedImplCopyWithImpl<_$SuggestionChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Breed> breeds) breedsChanged,
    required TResult Function(String query) suggestionChanged,
    required TResult Function(String search) breedsFounded,
  }) {
    return suggestionChanged(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Breed> breeds)? breedsChanged,
    TResult? Function(String query)? suggestionChanged,
    TResult? Function(String search)? breedsFounded,
  }) {
    return suggestionChanged?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Breed> breeds)? breedsChanged,
    TResult Function(String query)? suggestionChanged,
    TResult Function(String search)? breedsFounded,
    required TResult orElse(),
  }) {
    if (suggestionChanged != null) {
      return suggestionChanged(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BreedsChanged value) breedsChanged,
    required TResult Function(_SuggestionChanged value) suggestionChanged,
    required TResult Function(_BreedsFounded value) breedsFounded,
  }) {
    return suggestionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BreedsChanged value)? breedsChanged,
    TResult? Function(_SuggestionChanged value)? suggestionChanged,
    TResult? Function(_BreedsFounded value)? breedsFounded,
  }) {
    return suggestionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BreedsChanged value)? breedsChanged,
    TResult Function(_SuggestionChanged value)? suggestionChanged,
    TResult Function(_BreedsFounded value)? breedsFounded,
    required TResult orElse(),
  }) {
    if (suggestionChanged != null) {
      return suggestionChanged(this);
    }
    return orElse();
  }
}

abstract class _SuggestionChanged implements SearchEvent {
  const factory _SuggestionChanged(final String query) =
      _$SuggestionChangedImpl;

  String get query;
  @JsonKey(ignore: true)
  _$$SuggestionChangedImplCopyWith<_$SuggestionChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BreedsFoundedImplCopyWith<$Res> {
  factory _$$BreedsFoundedImplCopyWith(
          _$BreedsFoundedImpl value, $Res Function(_$BreedsFoundedImpl) then) =
      __$$BreedsFoundedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String search});
}

/// @nodoc
class __$$BreedsFoundedImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$BreedsFoundedImpl>
    implements _$$BreedsFoundedImplCopyWith<$Res> {
  __$$BreedsFoundedImplCopyWithImpl(
      _$BreedsFoundedImpl _value, $Res Function(_$BreedsFoundedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = null,
  }) {
    return _then(_$BreedsFoundedImpl(
      null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BreedsFoundedImpl implements _BreedsFounded {
  const _$BreedsFoundedImpl(this.search);

  @override
  final String search;

  @override
  String toString() {
    return 'SearchEvent.breedsFounded(search: $search)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BreedsFoundedImpl &&
            (identical(other.search, search) || other.search == search));
  }

  @override
  int get hashCode => Object.hash(runtimeType, search);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BreedsFoundedImplCopyWith<_$BreedsFoundedImpl> get copyWith =>
      __$$BreedsFoundedImplCopyWithImpl<_$BreedsFoundedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Breed> breeds) breedsChanged,
    required TResult Function(String query) suggestionChanged,
    required TResult Function(String search) breedsFounded,
  }) {
    return breedsFounded(search);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Breed> breeds)? breedsChanged,
    TResult? Function(String query)? suggestionChanged,
    TResult? Function(String search)? breedsFounded,
  }) {
    return breedsFounded?.call(search);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Breed> breeds)? breedsChanged,
    TResult Function(String query)? suggestionChanged,
    TResult Function(String search)? breedsFounded,
    required TResult orElse(),
  }) {
    if (breedsFounded != null) {
      return breedsFounded(search);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BreedsChanged value) breedsChanged,
    required TResult Function(_SuggestionChanged value) suggestionChanged,
    required TResult Function(_BreedsFounded value) breedsFounded,
  }) {
    return breedsFounded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BreedsChanged value)? breedsChanged,
    TResult? Function(_SuggestionChanged value)? suggestionChanged,
    TResult? Function(_BreedsFounded value)? breedsFounded,
  }) {
    return breedsFounded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BreedsChanged value)? breedsChanged,
    TResult Function(_SuggestionChanged value)? suggestionChanged,
    TResult Function(_BreedsFounded value)? breedsFounded,
    required TResult orElse(),
  }) {
    if (breedsFounded != null) {
      return breedsFounded(this);
    }
    return orElse();
  }
}

abstract class _BreedsFounded implements SearchEvent {
  const factory _BreedsFounded(final String search) = _$BreedsFoundedImpl;

  String get search;
  @JsonKey(ignore: true)
  _$$BreedsFoundedImplCopyWith<_$BreedsFoundedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchState {
  List<Breed> get breeds => throw _privateConstructorUsedError;
  List<SuggestionBreed> get breedSuggestions =>
      throw _privateConstructorUsedError;
  List<String> get breedPastSearches => throw _privateConstructorUsedError;
  List<Breed> get breedsFounded => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call(
      {List<Breed> breeds,
      List<SuggestionBreed> breedSuggestions,
      List<String> breedPastSearches,
      List<Breed> breedsFounded});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? breeds = null,
    Object? breedSuggestions = null,
    Object? breedPastSearches = null,
    Object? breedsFounded = null,
  }) {
    return _then(_value.copyWith(
      breeds: null == breeds
          ? _value.breeds
          : breeds // ignore: cast_nullable_to_non_nullable
              as List<Breed>,
      breedSuggestions: null == breedSuggestions
          ? _value.breedSuggestions
          : breedSuggestions // ignore: cast_nullable_to_non_nullable
              as List<SuggestionBreed>,
      breedPastSearches: null == breedPastSearches
          ? _value.breedPastSearches
          : breedPastSearches // ignore: cast_nullable_to_non_nullable
              as List<String>,
      breedsFounded: null == breedsFounded
          ? _value.breedsFounded
          : breedsFounded // ignore: cast_nullable_to_non_nullable
              as List<Breed>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StateImplCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$StateImplCopyWith(
          _$StateImpl value, $Res Function(_$StateImpl) then) =
      __$$StateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Breed> breeds,
      List<SuggestionBreed> breedSuggestions,
      List<String> breedPastSearches,
      List<Breed> breedsFounded});
}

/// @nodoc
class __$$StateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$StateImpl>
    implements _$$StateImplCopyWith<$Res> {
  __$$StateImplCopyWithImpl(
      _$StateImpl _value, $Res Function(_$StateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? breeds = null,
    Object? breedSuggestions = null,
    Object? breedPastSearches = null,
    Object? breedsFounded = null,
  }) {
    return _then(_$StateImpl(
      breeds: null == breeds
          ? _value._breeds
          : breeds // ignore: cast_nullable_to_non_nullable
              as List<Breed>,
      breedSuggestions: null == breedSuggestions
          ? _value._breedSuggestions
          : breedSuggestions // ignore: cast_nullable_to_non_nullable
              as List<SuggestionBreed>,
      breedPastSearches: null == breedPastSearches
          ? _value._breedPastSearches
          : breedPastSearches // ignore: cast_nullable_to_non_nullable
              as List<String>,
      breedsFounded: null == breedsFounded
          ? _value._breedsFounded
          : breedsFounded // ignore: cast_nullable_to_non_nullable
              as List<Breed>,
    ));
  }
}

/// @nodoc

class _$StateImpl implements _State {
  const _$StateImpl(
      {final List<Breed> breeds = const [],
      final List<SuggestionBreed> breedSuggestions = const [],
      final List<String> breedPastSearches = const [],
      final List<Breed> breedsFounded = const []})
      : _breeds = breeds,
        _breedSuggestions = breedSuggestions,
        _breedPastSearches = breedPastSearches,
        _breedsFounded = breedsFounded;

  final List<Breed> _breeds;
  @override
  @JsonKey()
  List<Breed> get breeds {
    if (_breeds is EqualUnmodifiableListView) return _breeds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_breeds);
  }

  final List<SuggestionBreed> _breedSuggestions;
  @override
  @JsonKey()
  List<SuggestionBreed> get breedSuggestions {
    if (_breedSuggestions is EqualUnmodifiableListView)
      return _breedSuggestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_breedSuggestions);
  }

  final List<String> _breedPastSearches;
  @override
  @JsonKey()
  List<String> get breedPastSearches {
    if (_breedPastSearches is EqualUnmodifiableListView)
      return _breedPastSearches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_breedPastSearches);
  }

  final List<Breed> _breedsFounded;
  @override
  @JsonKey()
  List<Breed> get breedsFounded {
    if (_breedsFounded is EqualUnmodifiableListView) return _breedsFounded;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_breedsFounded);
  }

  @override
  String toString() {
    return 'SearchState(breeds: $breeds, breedSuggestions: $breedSuggestions, breedPastSearches: $breedPastSearches, breedsFounded: $breedsFounded)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateImpl &&
            const DeepCollectionEquality().equals(other._breeds, _breeds) &&
            const DeepCollectionEquality()
                .equals(other._breedSuggestions, _breedSuggestions) &&
            const DeepCollectionEquality()
                .equals(other._breedPastSearches, _breedPastSearches) &&
            const DeepCollectionEquality()
                .equals(other._breedsFounded, _breedsFounded));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_breeds),
      const DeepCollectionEquality().hash(_breedSuggestions),
      const DeepCollectionEquality().hash(_breedPastSearches),
      const DeepCollectionEquality().hash(_breedsFounded));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StateImplCopyWith<_$StateImpl> get copyWith =>
      __$$StateImplCopyWithImpl<_$StateImpl>(this, _$identity);
}

abstract class _State implements SearchState {
  const factory _State(
      {final List<Breed> breeds,
      final List<SuggestionBreed> breedSuggestions,
      final List<String> breedPastSearches,
      final List<Breed> breedsFounded}) = _$StateImpl;

  @override
  List<Breed> get breeds;
  @override
  List<SuggestionBreed> get breedSuggestions;
  @override
  List<String> get breedPastSearches;
  @override
  List<Breed> get breedsFounded;
  @override
  @JsonKey(ignore: true)
  _$$StateImplCopyWith<_$StateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

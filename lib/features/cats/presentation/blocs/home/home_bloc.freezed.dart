// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadedBreeds,
    required TResult Function(Category category) categorySelected,
    required TResult Function(double position) scrollChanged,
    required TResult Function() scrolledToTop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadedBreeds,
    TResult? Function(Category category)? categorySelected,
    TResult? Function(double position)? scrollChanged,
    TResult? Function()? scrolledToTop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadedBreeds,
    TResult Function(Category category)? categorySelected,
    TResult Function(double position)? scrollChanged,
    TResult Function()? scrolledToTop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadedBreeds value) loadedBreeds,
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_ScrollChanged value) scrollChanged,
    required TResult Function(_ScrolledToTop value) scrolledToTop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadedBreeds value)? loadedBreeds,
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_ScrollChanged value)? scrollChanged,
    TResult? Function(_ScrolledToTop value)? scrolledToTop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadedBreeds value)? loadedBreeds,
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_ScrollChanged value)? scrollChanged,
    TResult Function(_ScrolledToTop value)? scrolledToTop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadedBreedsImplCopyWith<$Res> {
  factory _$$LoadedBreedsImplCopyWith(
          _$LoadedBreedsImpl value, $Res Function(_$LoadedBreedsImpl) then) =
      __$$LoadedBreedsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadedBreedsImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$LoadedBreedsImpl>
    implements _$$LoadedBreedsImplCopyWith<$Res> {
  __$$LoadedBreedsImplCopyWithImpl(
      _$LoadedBreedsImpl _value, $Res Function(_$LoadedBreedsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadedBreedsImpl implements _LoadedBreeds {
  const _$LoadedBreedsImpl();

  @override
  String toString() {
    return 'HomeEvent.loadedBreeds()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadedBreedsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadedBreeds,
    required TResult Function(Category category) categorySelected,
    required TResult Function(double position) scrollChanged,
    required TResult Function() scrolledToTop,
  }) {
    return loadedBreeds();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadedBreeds,
    TResult? Function(Category category)? categorySelected,
    TResult? Function(double position)? scrollChanged,
    TResult? Function()? scrolledToTop,
  }) {
    return loadedBreeds?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadedBreeds,
    TResult Function(Category category)? categorySelected,
    TResult Function(double position)? scrollChanged,
    TResult Function()? scrolledToTop,
    required TResult orElse(),
  }) {
    if (loadedBreeds != null) {
      return loadedBreeds();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadedBreeds value) loadedBreeds,
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_ScrollChanged value) scrollChanged,
    required TResult Function(_ScrolledToTop value) scrolledToTop,
  }) {
    return loadedBreeds(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadedBreeds value)? loadedBreeds,
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_ScrollChanged value)? scrollChanged,
    TResult? Function(_ScrolledToTop value)? scrolledToTop,
  }) {
    return loadedBreeds?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadedBreeds value)? loadedBreeds,
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_ScrollChanged value)? scrollChanged,
    TResult Function(_ScrolledToTop value)? scrolledToTop,
    required TResult orElse(),
  }) {
    if (loadedBreeds != null) {
      return loadedBreeds(this);
    }
    return orElse();
  }
}

abstract class _LoadedBreeds implements HomeEvent {
  const factory _LoadedBreeds() = _$LoadedBreedsImpl;
}

/// @nodoc
abstract class _$$CategorySelectedImplCopyWith<$Res> {
  factory _$$CategorySelectedImplCopyWith(_$CategorySelectedImpl value,
          $Res Function(_$CategorySelectedImpl) then) =
      __$$CategorySelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Category category});

  $CategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$$CategorySelectedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$CategorySelectedImpl>
    implements _$$CategorySelectedImplCopyWith<$Res> {
  __$$CategorySelectedImplCopyWithImpl(_$CategorySelectedImpl _value,
      $Res Function(_$CategorySelectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$CategorySelectedImpl(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res> get category {
    return $CategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc

class _$CategorySelectedImpl implements _CategorySelected {
  const _$CategorySelectedImpl(this.category);

  @override
  final Category category;

  @override
  String toString() {
    return 'HomeEvent.categorySelected(category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategorySelectedImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategorySelectedImplCopyWith<_$CategorySelectedImpl> get copyWith =>
      __$$CategorySelectedImplCopyWithImpl<_$CategorySelectedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadedBreeds,
    required TResult Function(Category category) categorySelected,
    required TResult Function(double position) scrollChanged,
    required TResult Function() scrolledToTop,
  }) {
    return categorySelected(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadedBreeds,
    TResult? Function(Category category)? categorySelected,
    TResult? Function(double position)? scrollChanged,
    TResult? Function()? scrolledToTop,
  }) {
    return categorySelected?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadedBreeds,
    TResult Function(Category category)? categorySelected,
    TResult Function(double position)? scrollChanged,
    TResult Function()? scrolledToTop,
    required TResult orElse(),
  }) {
    if (categorySelected != null) {
      return categorySelected(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadedBreeds value) loadedBreeds,
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_ScrollChanged value) scrollChanged,
    required TResult Function(_ScrolledToTop value) scrolledToTop,
  }) {
    return categorySelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadedBreeds value)? loadedBreeds,
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_ScrollChanged value)? scrollChanged,
    TResult? Function(_ScrolledToTop value)? scrolledToTop,
  }) {
    return categorySelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadedBreeds value)? loadedBreeds,
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_ScrollChanged value)? scrollChanged,
    TResult Function(_ScrolledToTop value)? scrolledToTop,
    required TResult orElse(),
  }) {
    if (categorySelected != null) {
      return categorySelected(this);
    }
    return orElse();
  }
}

abstract class _CategorySelected implements HomeEvent {
  const factory _CategorySelected(final Category category) =
      _$CategorySelectedImpl;

  Category get category;
  @JsonKey(ignore: true)
  _$$CategorySelectedImplCopyWith<_$CategorySelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScrollChangedImplCopyWith<$Res> {
  factory _$$ScrollChangedImplCopyWith(
          _$ScrollChangedImpl value, $Res Function(_$ScrollChangedImpl) then) =
      __$$ScrollChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double position});
}

/// @nodoc
class __$$ScrollChangedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$ScrollChangedImpl>
    implements _$$ScrollChangedImplCopyWith<$Res> {
  __$$ScrollChangedImplCopyWithImpl(
      _$ScrollChangedImpl _value, $Res Function(_$ScrollChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
  }) {
    return _then(_$ScrollChangedImpl(
      null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$ScrollChangedImpl implements _ScrollChanged {
  const _$ScrollChangedImpl(this.position);

  @override
  final double position;

  @override
  String toString() {
    return 'HomeEvent.scrollChanged(position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScrollChangedImpl &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScrollChangedImplCopyWith<_$ScrollChangedImpl> get copyWith =>
      __$$ScrollChangedImplCopyWithImpl<_$ScrollChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadedBreeds,
    required TResult Function(Category category) categorySelected,
    required TResult Function(double position) scrollChanged,
    required TResult Function() scrolledToTop,
  }) {
    return scrollChanged(position);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadedBreeds,
    TResult? Function(Category category)? categorySelected,
    TResult? Function(double position)? scrollChanged,
    TResult? Function()? scrolledToTop,
  }) {
    return scrollChanged?.call(position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadedBreeds,
    TResult Function(Category category)? categorySelected,
    TResult Function(double position)? scrollChanged,
    TResult Function()? scrolledToTop,
    required TResult orElse(),
  }) {
    if (scrollChanged != null) {
      return scrollChanged(position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadedBreeds value) loadedBreeds,
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_ScrollChanged value) scrollChanged,
    required TResult Function(_ScrolledToTop value) scrolledToTop,
  }) {
    return scrollChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadedBreeds value)? loadedBreeds,
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_ScrollChanged value)? scrollChanged,
    TResult? Function(_ScrolledToTop value)? scrolledToTop,
  }) {
    return scrollChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadedBreeds value)? loadedBreeds,
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_ScrollChanged value)? scrollChanged,
    TResult Function(_ScrolledToTop value)? scrolledToTop,
    required TResult orElse(),
  }) {
    if (scrollChanged != null) {
      return scrollChanged(this);
    }
    return orElse();
  }
}

abstract class _ScrollChanged implements HomeEvent {
  const factory _ScrollChanged(final double position) = _$ScrollChangedImpl;

  double get position;
  @JsonKey(ignore: true)
  _$$ScrollChangedImplCopyWith<_$ScrollChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScrolledToTopImplCopyWith<$Res> {
  factory _$$ScrolledToTopImplCopyWith(
          _$ScrolledToTopImpl value, $Res Function(_$ScrolledToTopImpl) then) =
      __$$ScrolledToTopImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ScrolledToTopImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$ScrolledToTopImpl>
    implements _$$ScrolledToTopImplCopyWith<$Res> {
  __$$ScrolledToTopImplCopyWithImpl(
      _$ScrolledToTopImpl _value, $Res Function(_$ScrolledToTopImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ScrolledToTopImpl implements _ScrolledToTop {
  const _$ScrolledToTopImpl();

  @override
  String toString() {
    return 'HomeEvent.scrolledToTop()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ScrolledToTopImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadedBreeds,
    required TResult Function(Category category) categorySelected,
    required TResult Function(double position) scrollChanged,
    required TResult Function() scrolledToTop,
  }) {
    return scrolledToTop();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadedBreeds,
    TResult? Function(Category category)? categorySelected,
    TResult? Function(double position)? scrollChanged,
    TResult? Function()? scrolledToTop,
  }) {
    return scrolledToTop?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadedBreeds,
    TResult Function(Category category)? categorySelected,
    TResult Function(double position)? scrollChanged,
    TResult Function()? scrolledToTop,
    required TResult orElse(),
  }) {
    if (scrolledToTop != null) {
      return scrolledToTop();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadedBreeds value) loadedBreeds,
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_ScrollChanged value) scrollChanged,
    required TResult Function(_ScrolledToTop value) scrolledToTop,
  }) {
    return scrolledToTop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadedBreeds value)? loadedBreeds,
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_ScrollChanged value)? scrollChanged,
    TResult? Function(_ScrolledToTop value)? scrolledToTop,
  }) {
    return scrolledToTop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadedBreeds value)? loadedBreeds,
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_ScrollChanged value)? scrollChanged,
    TResult Function(_ScrolledToTop value)? scrolledToTop,
    required TResult orElse(),
  }) {
    if (scrolledToTop != null) {
      return scrolledToTop(this);
    }
    return orElse();
  }
}

abstract class _ScrolledToTop implements HomeEvent {
  const factory _ScrolledToTop() = _$ScrolledToTopImpl;
}

/// @nodoc
mixin _$HomeState {
  HomeStatus get status => throw _privateConstructorUsedError;
  Exception? get error => throw _privateConstructorUsedError;
  List<Breed> get breeds => throw _privateConstructorUsedError;
  List<Category> get categories => throw _privateConstructorUsedError;
  Category? get categorySelected => throw _privateConstructorUsedError;
  double get scrollPosition => throw _privateConstructorUsedError;
  bool get shouldScrollToTop => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {HomeStatus status,
      Exception? error,
      List<Breed> breeds,
      List<Category> categories,
      Category? categorySelected,
      double scrollPosition,
      bool shouldScrollToTop});

  $CategoryCopyWith<$Res>? get categorySelected;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = freezed,
    Object? breeds = null,
    Object? categories = null,
    Object? categorySelected = freezed,
    Object? scrollPosition = null,
    Object? shouldScrollToTop = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomeStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception?,
      breeds: null == breeds
          ? _value.breeds
          : breeds // ignore: cast_nullable_to_non_nullable
              as List<Breed>,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      categorySelected: freezed == categorySelected
          ? _value.categorySelected
          : categorySelected // ignore: cast_nullable_to_non_nullable
              as Category?,
      scrollPosition: null == scrollPosition
          ? _value.scrollPosition
          : scrollPosition // ignore: cast_nullable_to_non_nullable
              as double,
      shouldScrollToTop: null == shouldScrollToTop
          ? _value.shouldScrollToTop
          : shouldScrollToTop // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res>? get categorySelected {
    if (_value.categorySelected == null) {
      return null;
    }

    return $CategoryCopyWith<$Res>(_value.categorySelected!, (value) {
      return _then(_value.copyWith(categorySelected: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {HomeStatus status,
      Exception? error,
      List<Breed> breeds,
      List<Category> categories,
      Category? categorySelected,
      double scrollPosition,
      bool shouldScrollToTop});

  @override
  $CategoryCopyWith<$Res>? get categorySelected;
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = freezed,
    Object? breeds = null,
    Object? categories = null,
    Object? categorySelected = freezed,
    Object? scrollPosition = null,
    Object? shouldScrollToTop = null,
  }) {
    return _then(_$HomeStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomeStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception?,
      breeds: null == breeds
          ? _value._breeds
          : breeds // ignore: cast_nullable_to_non_nullable
              as List<Breed>,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      categorySelected: freezed == categorySelected
          ? _value.categorySelected
          : categorySelected // ignore: cast_nullable_to_non_nullable
              as Category?,
      scrollPosition: null == scrollPosition
          ? _value.scrollPosition
          : scrollPosition // ignore: cast_nullable_to_non_nullable
              as double,
      shouldScrollToTop: null == shouldScrollToTop
          ? _value.shouldScrollToTop
          : shouldScrollToTop // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl extends _HomeState {
  const _$HomeStateImpl(
      {this.status = HomeStatus.initial,
      this.error,
      final List<Breed> breeds = const [],
      final List<Category> categories = const [],
      this.categorySelected,
      this.scrollPosition = 0,
      this.shouldScrollToTop = false})
      : _breeds = breeds,
        _categories = categories,
        super._();

  @override
  @JsonKey()
  final HomeStatus status;
  @override
  final Exception? error;
  final List<Breed> _breeds;
  @override
  @JsonKey()
  List<Breed> get breeds {
    if (_breeds is EqualUnmodifiableListView) return _breeds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_breeds);
  }

  final List<Category> _categories;
  @override
  @JsonKey()
  List<Category> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  final Category? categorySelected;
  @override
  @JsonKey()
  final double scrollPosition;
  @override
  @JsonKey()
  final bool shouldScrollToTop;

  @override
  String toString() {
    return 'HomeState(status: $status, error: $error, breeds: $breeds, categories: $categories, categorySelected: $categorySelected, scrollPosition: $scrollPosition, shouldScrollToTop: $shouldScrollToTop)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other._breeds, _breeds) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.categorySelected, categorySelected) ||
                other.categorySelected == categorySelected) &&
            (identical(other.scrollPosition, scrollPosition) ||
                other.scrollPosition == scrollPosition) &&
            (identical(other.shouldScrollToTop, shouldScrollToTop) ||
                other.shouldScrollToTop == shouldScrollToTop));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      error,
      const DeepCollectionEquality().hash(_breeds),
      const DeepCollectionEquality().hash(_categories),
      categorySelected,
      scrollPosition,
      shouldScrollToTop);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState extends HomeState {
  const factory _HomeState(
      {final HomeStatus status,
      final Exception? error,
      final List<Breed> breeds,
      final List<Category> categories,
      final Category? categorySelected,
      final double scrollPosition,
      final bool shouldScrollToTop}) = _$HomeStateImpl;
  const _HomeState._() : super._();

  @override
  HomeStatus get status;
  @override
  Exception? get error;
  @override
  List<Breed> get breeds;
  @override
  List<Category> get categories;
  @override
  Category? get categorySelected;
  @override
  double get scrollPosition;
  @override
  bool get shouldScrollToTop;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

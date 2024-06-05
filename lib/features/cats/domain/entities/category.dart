part of 'entities.dart';

@freezed
class Category with _$Category {
  const factory Category({
    required String name,
    required String image,
  }) = _Category;
}

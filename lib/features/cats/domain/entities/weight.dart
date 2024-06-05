part of 'entities.dart';

@freezed
class Weight with _$Weight {
  const factory Weight({
    String? imperial,
    String? metric,
  }) = _Weight;
}

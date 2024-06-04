part of 'entities.dart';

@freezed
class Weight with _$Weight {
  const factory Weight({
    required String imperial,
    required String metric,
  }) = _Weight;
}

part of 'entities.dart';

@freezed
class ImageBreed with _$ImageBreed {
  const factory ImageBreed({
    String? id,
    int? width,
    int? height,
    String? url,
  }) = _ImageBreed;
}

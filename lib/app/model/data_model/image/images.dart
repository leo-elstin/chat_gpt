import 'package:freezed_annotation/freezed_annotation.dart';

part 'images.freezed.dart';
part 'images.g.dart';

@freezed
class Images with _$Images {
  const factory Images({
    int? created,
    @JsonKey(name: 'data') List<ImageList>? imageList,
  }) = _Images;

  factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);
}

@freezed
class ImageList with _$ImageList {
  const factory ImageList({
    String? url,
  }) = _ImageList;

  factory ImageList.fromJson(Map<String, dynamic> json) =>
      _$ImageListFromJson(json);
}

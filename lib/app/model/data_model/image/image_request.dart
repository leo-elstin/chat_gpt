// To parse this JSON data, do
//
//     final imageRequest = imageRequestFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_request.freezed.dart';
part 'image_request.g.dart';

/// Request Body to generate image
///
/// https://beta.openai.com/docs/api-reference/images/create
/// [ prompt ] required
/// A text description of the desired image(s). The maximum length is 1000 characters.
///
/// [ n ] Defaults to 1
/// The number of images to generate. Must be between 1 and 10.
///
/// [ size ]
/// The size of the generated images. Must be one of 256x256, 512x512, or 1024x1024.
///

@freezed
class ImageRequest with _$ImageRequest {
  const factory ImageRequest({
    required String prompt,
    @Default(1) int? n,
    @Default('1024x1024') String? size,
  }) = _ImageRequest;

  factory ImageRequest.fromJson(Map<String, dynamic> json) =>
      _$ImageRequestFromJson(json);
}

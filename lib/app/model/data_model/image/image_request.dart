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

class ImageRequest {
  final String prompt;
  final int? n;
  final String? size;

  ImageRequest({required this.prompt, this.n = 1, this.size = '1024x1024'});

  Map<String, dynamic> toJson() => {"prompt": prompt, "n": n, "size": size};
}

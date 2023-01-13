class Images {
  final int? created;
  final List<ImageList>? data;

  Images({this.created, this.data});

  factory Images.fromJson(Map<String, dynamic> json) => Images(
        data: List<ImageList>.from(
          json['data'].map((x) => ImageList.fromJson(x)),
        ),
        created: json['created'],
      );
}

class ImageList {
  final String? url;

  ImageList({this.url});

  factory ImageList.fromJson(Map<String, dynamic> json) => ImageList(
        url: json['url'],
      );
}

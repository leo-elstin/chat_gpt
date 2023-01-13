// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'images.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Images _$$_ImagesFromJson(Map<String, dynamic> json) => _$_Images(
      created: json['created'] as int?,
      imageList: (json['data'] as List<dynamic>?)
          ?.map((e) => ImageList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ImagesToJson(_$_Images instance) => <String, dynamic>{
      'created': instance.created,
      'data': instance.imageList,
    };

_$_ImageList _$$_ImageListFromJson(Map<String, dynamic> json) => _$_ImageList(
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$_ImageListToJson(_$_ImageList instance) =>
    <String, dynamic>{
      'url': instance.url,
    };

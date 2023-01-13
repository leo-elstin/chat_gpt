// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ImageRequest _$$_ImageRequestFromJson(Map<String, dynamic> json) =>
    _$_ImageRequest(
      prompt: json['prompt'] as String,
      n: json['n'] as int? ?? 1,
      size: json['size'] as String? ?? '1024x1024',
    );

Map<String, dynamic> _$$_ImageRequestToJson(_$_ImageRequest instance) =>
    <String, dynamic>{
      'prompt': instance.prompt,
      'n': instance.n,
      'size': instance.size,
    };

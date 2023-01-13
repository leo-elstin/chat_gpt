// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'completion_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CompletionRequest _$$_CompletionRequestFromJson(Map<String, dynamic> json) =>
    _$_CompletionRequest(
      model: json['model'] as String? ?? 'text-davinci-003',
      prompt: json['prompt'] as String,
      temperature: (json['temperature'] as num?)?.toDouble() ?? 0.3,
      maxTokens: json['max_tokens'] as int? ?? 15,
    );

Map<String, dynamic> _$$_CompletionRequestToJson(
        _$_CompletionRequest instance) =>
    <String, dynamic>{
      'model': instance.model,
      'prompt': instance.prompt,
      'temperature': instance.temperature,
      'max_tokens': instance.maxTokens,
    };

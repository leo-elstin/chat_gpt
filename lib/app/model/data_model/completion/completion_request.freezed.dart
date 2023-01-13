// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'completion_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CompletionRequest _$CompletionRequestFromJson(Map<String, dynamic> json) {
  return _CompletionRequest.fromJson(json);
}

/// @nodoc
mixin _$CompletionRequest {
  String? get model => throw _privateConstructorUsedError;
  String get prompt => throw _privateConstructorUsedError;
  double? get temperature => throw _privateConstructorUsedError;
  int? get maxTokens => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompletionRequestCopyWith<CompletionRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompletionRequestCopyWith<$Res> {
  factory $CompletionRequestCopyWith(
          CompletionRequest value, $Res Function(CompletionRequest) then) =
      _$CompletionRequestCopyWithImpl<$Res, CompletionRequest>;
  @useResult
  $Res call(
      {String? model, String prompt, double? temperature, int? maxTokens});
}

/// @nodoc
class _$CompletionRequestCopyWithImpl<$Res, $Val extends CompletionRequest>
    implements $CompletionRequestCopyWith<$Res> {
  _$CompletionRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
    Object? prompt = null,
    Object? temperature = freezed,
    Object? maxTokens = freezed,
  }) {
    return _then(_value.copyWith(
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      prompt: null == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: freezed == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double?,
      maxTokens: freezed == maxTokens
          ? _value.maxTokens
          : maxTokens // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CompletionRequestCopyWith<$Res>
    implements $CompletionRequestCopyWith<$Res> {
  factory _$$_CompletionRequestCopyWith(_$_CompletionRequest value,
          $Res Function(_$_CompletionRequest) then) =
      __$$_CompletionRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? model, String prompt, double? temperature, int? maxTokens});
}

/// @nodoc
class __$$_CompletionRequestCopyWithImpl<$Res>
    extends _$CompletionRequestCopyWithImpl<$Res, _$_CompletionRequest>
    implements _$$_CompletionRequestCopyWith<$Res> {
  __$$_CompletionRequestCopyWithImpl(
      _$_CompletionRequest _value, $Res Function(_$_CompletionRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
    Object? prompt = null,
    Object? temperature = freezed,
    Object? maxTokens = freezed,
  }) {
    return _then(_$_CompletionRequest(
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      prompt: null == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: freezed == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double?,
      maxTokens: freezed == maxTokens
          ? _value.maxTokens
          : maxTokens // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_CompletionRequest implements _CompletionRequest {
  const _$_CompletionRequest(
      {this.model = 'text-davinci-003',
      required this.prompt,
      this.temperature = 0.3,
      this.maxTokens = 15});

  factory _$_CompletionRequest.fromJson(Map<String, dynamic> json) =>
      _$$_CompletionRequestFromJson(json);

  @override
  @JsonKey()
  final String? model;
  @override
  final String prompt;
  @override
  @JsonKey()
  final double? temperature;
  @override
  @JsonKey()
  final int? maxTokens;

  @override
  String toString() {
    return 'CompletionRequest(model: $model, prompt: $prompt, temperature: $temperature, maxTokens: $maxTokens)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CompletionRequest &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.prompt, prompt) || other.prompt == prompt) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.maxTokens, maxTokens) ||
                other.maxTokens == maxTokens));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, model, prompt, temperature, maxTokens);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CompletionRequestCopyWith<_$_CompletionRequest> get copyWith =>
      __$$_CompletionRequestCopyWithImpl<_$_CompletionRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CompletionRequestToJson(
      this,
    );
  }
}

abstract class _CompletionRequest implements CompletionRequest {
  const factory _CompletionRequest(
      {final String? model,
      required final String prompt,
      final double? temperature,
      final int? maxTokens}) = _$_CompletionRequest;

  factory _CompletionRequest.fromJson(Map<String, dynamic> json) =
      _$_CompletionRequest.fromJson;

  @override
  String? get model;
  @override
  String get prompt;
  @override
  double? get temperature;
  @override
  int? get maxTokens;
  @override
  @JsonKey(ignore: true)
  _$$_CompletionRequestCopyWith<_$_CompletionRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

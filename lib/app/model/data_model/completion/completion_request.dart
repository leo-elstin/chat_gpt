import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'completion_request.freezed.dart';
part 'completion_request.g.dart';

CompletionRequest? completionRequestFromJson(String str) =>
    CompletionRequest.fromJson(json.decode(str));

String completionRequestToJson(CompletionRequest? data) =>
    json.encode(data!.toJson());

/// Model to use as input for code generation
///
/// [ model ] required, ID of the model to use.
/// https://beta.openai.com/docs/models
///
/// for text generation / editing https://beta.openai.com/docs/models/gpt-3
/// defaults to text-davinci-003
///  For code generation or Edit https://beta.openai.com/docs/models/codex
/// use "code-davinci-002" as [ model ]
///
/// [ prompt ]
///  The prompt(s) to generate completions for, encoded as a string,
///  array of strings, array of tokens, or array of token arrays.
///
///  [ max_token ] The maximum number of tokens to generate in the completion.
///  The token count of your prompt plus max_tokens cannot exceed the model's context length.
///  Most models have a context length of 2048 tokens (except for the newest models, which support 4096).
///
/// [ temperature ]
/// What sampling temperature to use. Higher values means the model will take more risks.
/// Try 0.9 for more creative applications, and 0 (argmax sampling) for ones with a well-defined answer.
@freezed
class CompletionRequest with _$CompletionRequest {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory CompletionRequest({
    @Default('text-davinci-003') String? model,
    required String prompt,
    @Default(0.3) double? temperature,
    @Default(15) int? maxTokens,
  }) = _CompletionRequest;

  factory CompletionRequest.fromJson(Map<String, dynamic> json) =>
      _$CompletionRequestFromJson(json);
}

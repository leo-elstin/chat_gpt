import 'package:freezed_annotation/freezed_annotation.dart';

part 'completion.freezed.dart';
part 'completion.g.dart';

@freezed
class Completion with _$Completion {
  const factory Completion({
    String? id,
    String? object,
    int? created,
    String? model,
    List<Choice>? choices,
    Usage? usage,
  }) = _Completion;

  factory Completion.fromJson(Map<String, dynamic> json) =>
      _$CompletionFromJson(json);
}

@freezed
class Choice with _$Choice {
  const factory Choice({
    String? text,
    int? index,
    String? finishReason,
  }) = _Choice;

  factory Choice.fromJson(Map<String, dynamic> json) => _$ChoiceFromJson(json);
}

@freezed
class Usage with _$Usage {
  const factory Usage({
    int? promptTokens,
    int? completionTokens,
    int? totalTokens,
  }) = _Usage;

  factory Usage.fromJson(Map<String, dynamic> json) => _$UsageFromJson(json);
}

import 'dart:convert';

class Completion {
  final String? id;
  final String? object;
  final int? created;
  final String? model;
  final List<Choice>? choices;
  final Usage? usage;

  Completion({
    this.id,
    this.object,
    this.created,
    this.model,
    this.choices,
    this.usage,
  });

  factory Completion.fromMap(Map<String, dynamic> json) {
    return Completion(
      id: json['id'],
      object: json['object'],
      created: json['created'],
      model: json['model'],
      usage: Usage.fromMap(
        json['usage'],
      ),
      choices: List<Choice>.from(
        json["choices"].map((x) => Choice.fromMap(x)),
      ),
    );
  }

  //
  // String toJson() => json.encode(toMap());

  // factory Completion.fromJson(String source) =>
  //     Completion.fromMap(json.decode(source));

  Map<String, dynamic> toMap() => {
        "id": id,
        "object": object,
        "created": created,
        "model": model,
        "choices": List<dynamic>.from(choices!.map((x) => x.toMap())),
        "usage": usage?.toMap(),
      };
}

class Choice {
  final String? text;
  final int? index;
  final String? finishReason;

  Choice({this.text, this.index, this.finishReason});

  Map<String, dynamic> toMap() => {
        "text": text,
        "index": index,
        "finish_reason": finishReason,
      };

  factory Choice.fromMap(Map<String, dynamic> json) {
    return Choice(
      text: json['text'],
      index: json['index'],
      finishReason: json['finish_reason'],
    );
  }
}

class Usage {
  final int? promptTokens;
  final int? completionTokens;
  final int? totalTokens;

  Usage({this.promptTokens, this.completionTokens, this.totalTokens});

  factory Usage.fromMap(Map<String, dynamic> json) {
    return Usage(
      promptTokens: json['prompt_tokens'],
      completionTokens: json['completion_tokens'],
      totalTokens: json['total_tokens'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Usage.fromJson(String source) => Usage.fromMap(json.decode(source));

  Map<String, dynamic> toMap() => {
        "prompt_tokens": promptTokens,
        "completion_tokens": completionTokens,
        "total_tokens": totalTokens,
      };
}

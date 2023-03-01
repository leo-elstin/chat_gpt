import 'dart:convert';

import 'package:chat_gpt_api/app/model/data_model/chat/chat_request.dart';

class ChatCompletion {
  final String? id;
  final String? object;
  final int? created;
  final String? model;
  final List<ChatChoice>? choices;
  final Usage? usage;

  ChatCompletion({
    this.id,
    this.object,
    this.created,
    this.model,
    this.choices,
    this.usage,
  });

  factory ChatCompletion.fromMap(Map<String, dynamic> json) {
    return ChatCompletion(
      id: json['id'],
      object: json['object'],
      created: json['created'],
      model: json['model'],
      usage: Usage.fromMap(
        json['usage'],
      ),
      choices: List<ChatChoice>.from(
        json["choices"].map((x) => ChatChoice.fromMap(x)),
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

class ChatChoice {
  final ChatMessage? message;
  final int? index;
  final String? finishReason;

  ChatChoice({this.message, this.index, this.finishReason});

  Map<String, dynamic> toMap() => {
        "message": message?.toJson(),
        "index": index,
        "finish_reason": finishReason,
      };

  factory ChatChoice.fromMap(Map<String, dynamic> json) {
    return ChatChoice(
      message: ChatMessage.fromMap(json['message']),
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

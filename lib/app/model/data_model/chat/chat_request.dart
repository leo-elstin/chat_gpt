class ChatRequest {
  final String? model;
  final double? temperature;
  final int? maxTokens;
  final double? topP;
  final double? presencePenalty;
  final List<ChatMessage> messages;

  ChatRequest({
    this.model = 'gpt-3.5-turbo',
    required this.messages,
    this.temperature = 0.3,
    this.maxTokens = 50,
    this.topP = 0,
    this.presencePenalty = 0,
  });

  Map<String, dynamic> toJson() => {
        'model': model,
        'temperature': temperature,
        'max_tokens': maxTokens,
        'top_p': topP,
        'presence_penalty': presencePenalty,
        'messages': List<dynamic>.from(messages.map((x) => x.toJson())),
      };
}

class ChatMessage {
  final String role;
  final String content;

  ChatMessage({required this.role, required this.content});

  Map<String, dynamic> toJson() => {
        'role': role,
        'content': content,
      };
  factory ChatMessage.fromMap(Map<String, dynamic> json) {
    return ChatMessage(
      role: json['role'],
      content: json['content'],
    );
  }
}

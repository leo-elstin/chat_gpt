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

class CompletionRequest {
  final String? model;
  final String prompt;
  final double? temperature;
  final int? maxTokens;
  final double? topP;
  final double? presencePenalty;
  final List<String>? stop;
  final int? n;

  CompletionRequest({
    this.model = 'text-davinci-003',
    required this.prompt,
    this.temperature = 0.3,
    this.maxTokens = 50,
    this.topP = 0,
    this.presencePenalty = 0,
    this.stop,
    this.n,
  });

  Map<String, dynamic> toJson() => {
        'model': model,
        'prompt': prompt,
        'temperature': temperature,
        'max_tokens': maxTokens,
        'top_p': topP,
        'presence_penalty': presencePenalty,
        'stop': stop,
        'n': n ?? 1,
      };
}

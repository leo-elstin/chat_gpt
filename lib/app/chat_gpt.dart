import 'package:chat_gpt/app/api/api.dart';
import 'package:chat_gpt/app/model/data_model/completion/completion.dart';
import 'package:chat_gpt/app/model/data_model/completion/completion_request.dart';
import 'package:chat_gpt/app/model/data_model/image/image_request.dart';
import 'package:chat_gpt/app/model/data_model/image/images.dart';

class ChatGPT {
  static final ChatGPT _singleton = ChatGPT._internal();

  factory ChatGPT() {
    return _singleton;
  }

  ChatGPT._internal();

  static String? _token;

  static String? get token => _token;

  /// Builder
  /// @param [token]  token to access the openAPI endpoints
  /// generate token here https://beta.openai.com/account/api-keys

  static ChatGPT builder({required String token}) {
    _token = token;
    return _singleton;
  }

  /// Text API
  ///
  /// https://beta.openai.com/docs/guides/completion/text-completion
  /// Text Completion , Insert Text, Edit Text
  ///
  /// Code Completion
  /// https://beta.openai.com/docs/guides/completion/text-completion
  /// Turn comments into code
  /// Complete your next line or function in context
  /// Complete your next line or function in context
  /// To see Codex in action, check out https://beta.openai.com/codex-javascript-sandbox
  /// To work with code use the "code-davinci-002" model
  Future<Completion?> textCompletion({
    required CompletionRequest request,
  }) async {
    return await Api().textCompletion(request: request);
  }

  /// Image Generation
  ///
  /// https://beta.openai.com/docs/guides/images/image-generation-beta
  /// as of now it supports Creating images from scratch based on a text prompt
  /// [ prompt ] the input to generate the image. eg: "a white siamese cat"
  /// [ size ] the output image size 256x256, 512x512, or 1024x1024 pixel. Defaults to 1024x1024
  /// [ n ] maximum number of images that can be generated min 1 & max 10. Defaults to 1

  Future<Images?> generateImage({
    required ImageRequest request,
  }) async {
    return await Api().generateImage(request: request);
  }
}

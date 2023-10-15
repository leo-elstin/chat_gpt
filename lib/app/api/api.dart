import 'package:chat_gpt_api/app/chat_gpt.dart';
import 'package:chat_gpt_api/app/model/models.dart';
import 'package:dio/dio.dart';

class Api {
  final Dio _dio = Dio();

  final String _baseUrl = 'https://api.openai.com/v1';

  final Map<String, dynamic> _headers = {
    Headers.contentTypeHeader: 'application/json',
    'Authorization': 'Bearer ${ChatGPT.token}',
  };

  Future<Completion?> textCompletion({
    required CompletionRequest request,
  }) async {
    String url = '$_baseUrl/completions';
    try {
      Response response = await _dio.post(
        url,
        data: request.toJson(),
        options: Options(
          headers: _headers,
        ),
      );

      return Completion.fromMap(response.data);
    } on DioException {
      return null;
    }
  }

  /// Method to generate the image(s) based on the given
  ///
  /// input prompt
  /// [request] is a required parameter
  /// the return type can be null
  Future<Images?> generateImage({
    required ImageRequest request,
  }) async {
    String url = '$_baseUrl/images/generations';
    Response response = await _dio.post(
      url,
      data: request.toJson(),
      options: Options(
        headers: _headers,
      ),
    );
    return Images.fromJson(response.data);
  }
}

// import 'package:chat_gpt/app/model/data_model/completion/completion.dart';
// import 'package:chat_gpt/app/model/data_model/completion/completion_request.dart';
// import 'package:dio/dio.dart';
// import 'package:mockito/mockito.dart';
// import 'package:test/test.dart';
//
// class DioMock extends Mock implements Dio {}
//
// void main() {
//   Api api;
//   DioMock dioMock;
//
//   setUp(() {
//     dioMock = DioMock();
//     api = Api._internal(dioMock);
//   });
//
//   group('textCompletion', () {
//     test('should return completion', () async {
//       final request = CompletionRequest(
//         prompt: 'What is the capital of France?',
//         temperature: 0.5,
//         maxTokens: 10,
//       );
//       final responseData = {
//         'id': 'abc',
//         'choices': [
//           {
//             'text': 'Paris'
//           }
//         ]
//       };
//       when(dioMock.post(
//         any,
//         data: request.toJson(),
//         options: anyNamed('options'),
//       )).thenAnswer((_) async => Response(data: responseData));
//
//       final completion = await api.textCompletion(request: request);
//
//       expect(completion, isA<Completion>());
//       expect(completion.id, 'abc');
//       expect(completion.choices.first.text, 'Paris');
//     });
//   });
// }

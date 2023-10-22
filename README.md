## ChatGPT SDK for Flutter
The chatGPT SDK written in dart to access the features of the OpenAI APIs
## Features
1. Text Completion
2. Chat Completion
3. Code Generation
4. Image Generation

## Getting started

```dart
chat_gpt: 2.0.0
flutter pub get
```

## Usage

Create an instance of the ChatGPT

```
final chatGpt = ChatGPT.builder( token: '<token>');
```
You can generate the token from  https://beta.openai.com/account/api-keys

## Additional information

#Text Completion : The completions endpoint can be used for a wide variety of tasks.
More details : https://beta.openai.com/docs/guides/completion

How to write the prompts
https://beta.openai.com/docs/guides/completion/prompt-design

Method to do code completion / code completion

```
    const prompt = "Explain Quantum Computing in simple terms";

    Completion? completion = await chatGpt.textCompletion(
      request: const CompletionRequest(
        prompt: prompt,
        maxTokens: 256,
      ),
    );

    print(completion?.choices);
```

#Image generation : The image generations endpoint allows you to create an original image given a text prompt.
More Details : https://beta.openai.com/docs/guides/images/introduction

Supported Image Generation Types
1. Creating images from scratch based on a text prompt
2. ~~Creating edits of an existing image based on a new text prompt~~
3. ~~Creating variations of an existing image~~

Sample Code to generate the image

```
    Images? images = await chatGpt.generateImage(
      request: const ImageRequest(
        prompt: 'A cute baby sea otter',
      ),
    );

    print(images?.data);
```

Catch me up on **LinkedIn** @[Leo Elstin](https://www.linkedin.com/in/leoelstin/ "Leo Elstin")

💙 to Code 👨 🏽‍💻  Full Stack Mobile Developer [ Flutter, Native, Spring Boot ]



import 'package:flutter/material.dart';
import 'package:flutter_api_key_secure_test/hard_cord/api_key.dart';

//추가로 api_key가 담겨있는 파일을 만들어 그 파일을 깃 이그노어에 등록하여 불러와서 사용.
// -> api_key.dart 에 있고, gitignore 에 등록해둠.
//   http://cdn.ggilbo.com/news/photo/202208/926599_758569_2224.jpg 의 이미지에서
//  '926599_758569_2224.jpg' 를 Api Key 값이라고 가정하고 연습

class HardCordingApiKey extends StatefulWidget {
  const HardCordingApiKey({Key? key}) : super(key: key);

  @override
  State<HardCordingApiKey> createState() => _HardCordingApiKeyState();
}

class _HardCordingApiKeyState extends State<HardCordingApiKey> {
  final ApiKey _apiKey = ApiKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('하드코딩 방식'),
      ),
      body: Center(
        child: Image.network(
            'http://cdn.ggilbo.com/news/photo/202208/${_apiKey.apiKey}'),
      ),
    );
  }
}

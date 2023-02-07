import 'package:flutter/material.dart';
import 'package:flutter_api_key_secure_test/hard_cord/api_key.dart';

//  flutter run --dart-define KEY=926599_758569_2224.jpg
//
//   http://cdn.ggilbo.com/news/photo/202208/926599_758569_2224.jpg 의 이미지에서
//  '926599_758569_2224.jpg' 를 Api Key 값이라고 가정하고 연습

class ApiKeyUsingDefine extends StatefulWidget {
  const ApiKeyUsingDefine({Key? key}) : super(key: key);

  @override
  State<ApiKeyUsingDefine> createState() => _ApiKeyUsingDefineState();
}

class _ApiKeyUsingDefineState extends State<ApiKeyUsingDefine> {
  @override
  Widget build(BuildContext context) {
    const apiKey = String.fromEnvironment('KEY');
    if (apiKey.isEmpty) {
      throw AssertionError('KEY is not set');
    }
// TODO: use api
    return Scaffold(
      appBar: AppBar(
        title: const Text('--dart-define 이용'),
      ),
      body: Center(
        child: Image.network('http://cdn.ggilbo.com/news/photo/202208/$apiKey'),
      ),
    );
  }
}

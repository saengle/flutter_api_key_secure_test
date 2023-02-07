import 'package:flutter/material.dart';

import 'hard_cord/first_hard_cording.dart';
// https://codewithandrea.com/articles/flutter-api-keys-dart-define-env-files/
// 위 사이트 토대로 연습.
//   http://cdn.ggilbo.com/news/photo/202208/926599_758569_2224.jpg 의 이미지에서
//  '926599_758569_2224.jpg' 를 Api Key 값이라고 가정 하여 연습.
//  HardCordingApiKey

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HardCordingApiKey(),
    );
  }
}

import 'package:flutter/material.dart';
import 'env.dart';

//  env 사용.
//
//   http://cdn.ggilbo.com/news/photo/202208/926599_758569_2224.jpg 의 이미지에서
//  '926599_758569_2224.jpg' 를 Api Key 값이라고 가정하고 연습

class ApiKeyUsingEnv extends StatefulWidget {
  const ApiKeyUsingEnv({Key? key}) : super(key: key);

  @override
  State<ApiKeyUsingEnv> createState() => _ApiKeyUsingEnvState();
}

class _ApiKeyUsingEnvState extends State<ApiKeyUsingEnv> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: const Text('Env 이용'),
      ),
      body: Center(
        child: Image.network('http://cdn.ggilbo.com/news/photo/202208/${Env.Key}'),
      ),
    );
  }
}

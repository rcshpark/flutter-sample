import 'package:flutter/material.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
import '../main.dart';
import 'package:example/controller/kakaologin_controller.dart';

class KakaoLoginScreen extends StatefulWidget {
  const KakaoLoginScreen({Key? key}) : super(key: key);

  @override
  State<KakaoLoginScreen> createState() => _KakaoLoginScreenState();
}

class _KakaoLoginScreenState extends State<KakaoLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('kakao login'),
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                KakaoLogin().checkLogin();
              },
              child: const Text(
                'kakao login',
                style: TextStyle(
                  fontSize: 24,
                ),
              )),
        ));
  }
}

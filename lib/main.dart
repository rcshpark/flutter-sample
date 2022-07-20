import 'package:flutter/material.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';

void main() {
  KakaoSdk.init(nativeAppKey: 'e23034cf2fa02c3024d5330a090b6b62');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void _get_user_info() async {
    try {
      User user = await UserApi.instance.me();
      print('사용자 정보 요청 성공'
          '\n회원번호:${user.id} '
          '\n닉네임:${user.kakaoAccount?.profile?.nickname}');
    } catch (error) {
      print('사용자 정보 요청 실패 $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: Colors.white,
        child: Center(
          child: ElevatedButton(
              child: const Text('카카오 로그인'),
              onPressed: () async {
                if (await isKakaoTalkInstalled()) {
                  try {
                    await UserApi.instance.loginWithKakaoTalk();
                    print('success');
                    _get_user_info();
                  } catch (error) {
                    print('fale $error');

                    try {
                      await UserApi.instance.loginWithKakaoAccount();
                      print('success');
                      _get_user_info();
                    } catch (error) {
                      print('fale $error');
                    }
                  }
                } else {
                  try {
                    await UserApi.instance.loginWithKakaoAccount();
                    print('success');
                    _get_user_info();
                  } catch (error) {
                    print('fale $error');
                  }
                }
              }),
        ),
      ),
    );
  }
}

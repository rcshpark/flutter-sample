import 'package:example/firebase/firebasetest.dart';
import 'package:example/firebase/postpage.dart';
import 'package:example/listview/Binding/listview_binding.dart';
import 'package:example/listview/listviewscreen.dart';
import 'package:example/screen/checkbox.dart';
import 'package:example/screen/api_screen.dart';
import 'package:example/screen/quizhome.dart';
import 'package:example/apitest.dart';
import 'package:example/screen/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'screen/kakaologin_screen.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

void main() async {
  KakaoSdk.init(nativeAppKey: 'e23034cf2fa02c3024d5330a090b6b62');
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: ListViewBinding(),
      title: 'flutter example',
      //home: TestPage(),
      //home: KakaoLoginScreen(),
      //home: UseApi(),
      //home: TestApi(),
      //home: FirebaseTest(),
      //home: MakePostPage(),
      //home: TextFormScreen(),
      home: ListViewScreen(),
    );
  }
}

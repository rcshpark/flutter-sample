import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TextFormScreen extends StatefulWidget {
  const TextFormScreen({Key? key}) : super(key: key);

  @override
  State<TextFormScreen> createState() => _TextFormScreenState();
}

class _TextFormScreenState extends State<TextFormScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('TextField Test'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            TextField(
              maxLines: 10, // 텍스트필드 크기 설정 가능
              onChanged: (value) {},
              decoration: InputDecoration(
                icon: const Icon(Icons.star), // 텍스트필드 외부 아이콘 생성
                prefixIcon: const Icon(
                  Icons.heart_broken, // 텍스트필드 내의 아이콘 생성
                ),
                prefix: Container(
                    width: 10,
                    height: 10,
                    color: Colors.yellow), // 아이콘이 아닌 다른것들을 넣을 수 있음
                suffix: Container(
                    width: 10,
                    height: 10,
                    color: Colors.yellow), // prefix와 동일하지만, 텍스트 필드 좌측에 생성
                counter: Container(
                    width: 10, height: 10, color: Colors.red), // 우측 하단
                filled: true,
                fillColor: Colors.white,
                focusColor: Colors.red, // ??
                hoverColor: Colors.red, //??
                border: const OutlineInputBorder(), // 테두리 border 설정
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('test button'),
            ),
          ],
        ),
      ),
    );
  }
}

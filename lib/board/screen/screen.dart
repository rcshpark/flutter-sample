import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:example/board/model/model.dart';
import 'package:example/json_listview/controller/home_controller.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:example/board/model/model.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  void fetchData() async {
    try {
      http.Response response =
          await http.get(Uri.parse('http://10.0.2.2:8000/account/test/4'));
      String jsonData = response.body;
      // var myJson = jsonDecode(jsonData)['title']['content'];
      print(jsonData);
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('test'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            fetchData();
          },
          child: const Text('test'),
        ),
      ),
    );
  }
}

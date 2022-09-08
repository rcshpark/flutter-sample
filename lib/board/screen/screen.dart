import 'dart:convert';
import 'package:example/json_listview/Model/testmodel.dart';
import 'package:example/screen/password.dart';
import 'package:http/http.dart' as http;
import 'package:example/board/model/model.dart';
import 'package:example/json_listview/controller/home_controller.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:example/board/model/model.dart';

class Test extends StatefulWidget {
  const Test({
    Key? key,
  }) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  List<MyModel> testModel = [];
  // final List<TestModel> _test = [];

  void fetchData() async {
    try {
      http.Response response =
          await http.get(Uri.parse('http://10.0.2.2:8000/account/test/4'));
      String jsonData = response.body;
      // var myJson = jsonDecode(jsonData)['title']['content'];
      List<dynamic> body = json.decode(response.body);
      testModel = body.map((dynamic item) => MyModel.fromJson(item)).toList();
      print(jsonData);
      setState(() {});
      print(testModel);
    } catch (e) {
      print(e);
    }
  }

  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('test'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.separated(
              shrinkWrap: true,
              itemCount: testModel.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  // 컨테이너 클릭이벤트 적용하려면 GestureDetector 사용, 다른방법도 존재함.
                  onTap: () {
                    // Get.to(const PasswordScreen()); 컨테이너 클릭시, 버튼이벤트 작동
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 20),
                    height: 100,
                    child: Column(
                      children: [
                        Text(testModel[index].title),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(testModel[index].content),
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => const Divider(),
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     fetchData();
            //   },
            //   child: const Text('test'),
            // ),
            // ListView.builder(
            //     shrinkWrap: true,
            //     itemCount: testModel.length,
            //     itemBuilder: (context, index) {
            //       return Container(
            //         child: Column(
            //           children: [
            //             Text(
            //               testModel[index].title,
            //               style: const TextStyle(
            //                 fontSize: 12,
            //               ),
            //             ),
            //             Text(
            //               testModel[index].content,
            //               style: const TextStyle(
            //                 fontSize: 12,
            //               ),
            //             ),
            //           ],
            //         ),
            //       );
            //       // return Text(testModel[index].title);
            //     })
          ],
        ),
      ),
    );
  }
}

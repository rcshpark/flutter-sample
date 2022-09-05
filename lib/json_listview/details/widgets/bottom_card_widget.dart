import 'package:example/json_listview/controller/test_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardBottomCustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16),
              child: GetX<TestController>(
                  builder: (_) => Text(
                        _.post.body,
                      )),
            ),
          ),
        ],
      ),
    );
  }
}

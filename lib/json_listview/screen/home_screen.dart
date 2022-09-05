import 'package:example/json_listview/controller/home_controller.dart';
import 'package:example/json_listview/widget/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: GetX<HomeController>(
          initState: (state) {
            Get.find<HomeController>().getAll();
          },
          builder: (_) {
            return _.postList.length < 1
                ? LoadingWidget()
                : ListView.builder(
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(_.postList[index].title ?? 'a'),
                        subtitle: Text(_.postList[index].body ?? 'b'),
                        // onTap: () => _.details(_.postList[index]),
                      );
                    },
                    itemCount: _.postList.length,
                  );
          },
        ),
      ),
    );
  }
}

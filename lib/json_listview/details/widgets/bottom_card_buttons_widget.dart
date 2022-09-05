import 'package:example/json_listview/controller/test_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widget/button_widget.dart';

class CardBottomButtonsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        GetX<TestController>(
          builder: (_) {
            return RaisedButtonCustomWidget(
              icon: Icons.delete_outline,
              onPressed: _.delete(_.post.id),
              text: 'Delete',
            );
          },
        ),
        GetX<TestController>(
          builder: (_) {
            return RaisedButtonCustomWidget(
              icon: Icons.edit,
              onPressed: () {},
              text: 'Editar',
            );
          },
        )
      ],
    );
  }
}

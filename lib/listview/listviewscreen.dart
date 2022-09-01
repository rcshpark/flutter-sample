import 'package:example/listview/controller/listview_controller.dart';
import 'package:example/screen/password.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:example/listview/controller/listview_controller.dart';
import 'package:get/get.dart';

class ListViewScreen extends GetView<InfiniteScrollController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Test'),
        centerTitle: true,
      ),
      body: Obx(
        () => Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView.separated(
            controller: controller.scrollController.value,
            itemBuilder: (_, index) {
              print(controller.hasMore.value);

              if (index < controller.data.length) {
                var datum = controller.data[index]; // 데이터 번호
                return Material(
                  elevation: 10.0,
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    child: ListTile(
                      onTap: () {
                        // listtitle press action
                      },
                      onLongPress: () {
                        // long time listview press action
                      },
                      leading: const Icon(Icons.android_outlined),
                      title: Text('$datum 번째 데이터'),
                      trailing: const Icon(
                        Icons.arrow_forward_ios_outlined,
                      ),
                    ),
                  ),
                );
              }
              if (controller.hasMore.value || controller.isLoading.value) {
                return const Center(child: RefreshProgressIndicator());
              }
              return Container(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Column(
                    children: [
                      const Text('last data'),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.refresh_outlined),
                      ),
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (_, index) => const Divider(),
            itemCount: controller.data.length + 1,
          ),
        ),
      ),
    );
  }
}

import 'package:get/instance_manager.dart';

import '../controller/listview_controller.dart';

class ListViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(InfiniteScrollController());
  }
}

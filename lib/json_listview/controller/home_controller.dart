import 'package:example/json_listview/Model/testmodel.dart';
import 'package:example/json_listview/repository/test_repository.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HomeController extends GetxController {
  final TestRepository repository;
  HomeController({required this.repository});

  final _postList = <TestModel>[].obs;
  get postList => _postList.value;
  set postList(value) => _postList.value = value;

  final _post = TestModel().obs;
  get post => _post.value;
  set post(value) => _post.value = value;

  getAll() {
    repository.getAll().then((data) {
      postList = data;
    });
  }
}

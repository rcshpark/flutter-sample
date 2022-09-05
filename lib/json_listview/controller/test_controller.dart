import 'package:example/json_listview/Model/testmodel.dart';
import 'package:example/json_listview/repository/test_repository.dart';
import 'package:get/get.dart';

class TestController extends GetxController {
  final TestRepository repository;
  TestController({required this.repository});

  final _post = TestModel().obs;
  get post => this._post.value;
  set post(value) => this._post.value = value;

  delete(id) {}
}

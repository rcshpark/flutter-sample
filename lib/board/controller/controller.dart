import 'package:get/get.dart';
import 'package:example/board/repository/repository.dart';
import 'package:example/board/model/model.dart';
import 'package:meta/meta.dart';

class DetailsController extends GetxController {
  final MyRepository repository;
  DetailsController({required this.repository});

  final _post = MyModel().obs;
  get post => _post.value;
  set post(value) => _post.value = value;

  editar(post) {
    print('editar');
  }

  delete(id) {
    print('deletar');
  }
}

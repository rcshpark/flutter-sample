import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:example/board/controller/controller.dart';
import 'package:example/board/repository/repository.dart';
import 'package:example/board/provider/api.dart';
class DetailsBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<DetailsController>(() {
      return DetailsController(
          repository:
              MyRepository(apiClient: MyApiClient(httpClient: http.Client())));
    });
  }

}
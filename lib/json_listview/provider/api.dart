import 'package:example/json_listview/Model/testmodel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:get/get.dart';

const baseUrl = 'https://jsonplaceholder.typicode.com/posts/';

class TestApiClient {
  final http.Client httpClient;
  TestApiClient({required this.httpClient});

  getAll() async {
    try {
      var response = await httpClient.get(Uri.parse(baseUrl));
      if (response.statusCode == 200) {
        Iterable jsonResponse = json.decode(response.body);
        List<TestModel> listMyModel =
            jsonResponse.map((model) => TestModel.fromJson(model)).toList();
        return listMyModel;
      } else {
        print('error');
      }
    } catch (error) {
      print(error);
    }
  }
}

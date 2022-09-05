import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:example/board/model/model.dart';

const baseUrl = 'http://10.0.2.2:8000/account/test/';

class MyApiClient {
  final http.Client httpClient;
  MyApiClient({required this.httpClient});

  getAll() async {
    try {
      var response = await httpClient.get(Uri.parse(baseUrl));
      if (response.statusCode == 200) {
        Iterable jsonResponse = json.decode(response.body);
        List<MyModel> listMyModel =
            jsonResponse.map((model) => MyModel.fromJson(model)).toList();
        // listMyModel.removeRange(2, listMyModel.length);
        // List<MyModel> listMyModel = new List<MyModel>.empty();
        return listMyModel;
      } else
        print('erro');
    } catch (_) {}
  }
}

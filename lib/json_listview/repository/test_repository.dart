import 'package:example/json_listview/provider/api.dart';

class TestRepository {
  final TestApiClient apiClient;

  TestRepository({required this.apiClient});

  getAll() {
    return apiClient.getAll();
  }
}

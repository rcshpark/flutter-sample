import 'package:meta/meta.dart';
import 'package:example/board/provider/api.dart';

class MyRepository {
  final MyApiClient apiClient;

  MyRepository({required this.apiClient});

  getAll() {
    return apiClient.getAll();
  }
}

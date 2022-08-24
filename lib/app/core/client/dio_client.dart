import 'package:mentoria_clean/app/core/client/client.dart';

class DioClient implements IHttpClient {
  @override
  Future<Map<String, dynamic>> delete(String path, {required String id}) {
    // ...
    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>> get(String path) {
    // ...
    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>> post(String path,
      {required Map<String, dynamic> body}) {
    // ...
    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>> put(String path,
      {required Map<String, dynamic> body}) {
    // ...
    throw UnimplementedError();
  }
}

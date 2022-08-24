abstract class IHttpClient {
  Future<Map<String, dynamic>> get(String path);

  Future<Map<String, dynamic>> post(
    String path, {
    required Map<String, dynamic> body,
  });

  Future<Map<String, dynamic>> put(
    String path, {
    required Map<String, dynamic> body,
  });

  Future<Map<String, dynamic>> delete(
    String path, {
    required String id,
  });
}

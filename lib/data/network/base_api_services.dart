abstract class BaseApiServices {
  Future<dynamic> getApiServices(String url);
  Future<dynamic> getPostServices(String url, dynamic data);
}

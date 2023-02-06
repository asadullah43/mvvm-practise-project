import 'package:mvvm_practise/data/network/base_api_services.dart';
import 'package:mvvm_practise/data/network/network_api_services.dart';
import 'package:mvvm_practise/res/app_url.dart';

class AuthRepository {
  final BaseApiServices _apiServices = NetworkApiServices();
  Future<dynamic> loginApi(dynamic data) async {
    try {
      dynamic response =
          await _apiServices.getPostServices(AppUrl.loginEndPoint, data);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> signUpApi(dynamic data) async {
    try {
      dynamic response =
          await _apiServices.getPostServices(AppUrl.registerEndPoint, data);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}

import 'package:mvvm_practise/data/network/baseApiServices.dart';
import 'package:mvvm_practise/data/network/networkApiServices.dart';
import 'package:mvvm_practise/res/app_url.dart';

class AuthRepository {
  final BaseApiServices _apiServices = NetworkApiServices();
  Future<dynamic> loginApi(dynamic data) async {
    try {
      dynamic response =
          await _apiServices.getPostServices(AppUrl.loginEndPoint, data);
      return response;
    } catch (e) {
      throw e;
    }
  }

  Future<dynamic> registerApi(dynamic data) async {
    try {
      dynamic response =
          await _apiServices.getPostServices(AppUrl.registerEndPoint, data);
      return response;
    } catch (e) {
      throw e;
    }
  }
}

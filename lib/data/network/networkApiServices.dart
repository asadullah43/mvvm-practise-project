import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:mvvm_practise/data/app_exception.dart';
import 'package:mvvm_practise/data/network/baseApiServices.dart';
import 'package:http/http.dart' as http;

class NetworkApiServices extends BaseApiServices {
  @override
  Future getApiServices(String url) async {
    dynamic responseJson;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
      responseJson = returnRespone(response);
    } on SocketException {
      throw FetchDataException('No interner connection');
    }
    return responseJson;
  }

  @override
  Future getPostServices(String url, dynamic data) async {
    dynamic responseJson;
    try {
      final response = await post(Uri.parse(url), body: data)
          .timeout(const Duration(seconds: 10));
      responseJson = returnRespone(response);
    } on SocketException {
      throw FetchDataException('No interner connection');
    }
    return responseJson;
  }

  dynamic returnRespone(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 404:
        throw BadRequestException(response.body.toString());
      default:
        throw FetchDataException(
            "Error Occured while communicating with server with status code${response.statusCode.toString()}");
    }
  }
}

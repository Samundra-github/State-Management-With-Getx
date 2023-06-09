import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/mvvm/data/app_exception.dart';
import 'package:flutter_application_1/mvvm/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;

class NetworkApiServices extends BaseApiServices {
  @override
  Future<dynamic> getApi(String Url) async {
    if (kDebugMode) {
      print(Url);
    }
    dynamic responseJson;
    try {
      final response =
          await http.get(Uri.parse(Url)).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw ServerException('No Internet');
    } on RequestTimeout {
      throw RequestTimeout('Request Timeout');
    }
    return responseJson;
  }

  @override
  Future<dynamic> postApi(dynamic data, String Url) async {
    if (kDebugMode) {
      print(Url);
    }
    dynamic responseJson;
    try {
      final response = await http
          .post(
            Uri.parse(Url),
            body: jsonEncode(data),
          )
          .timeout(
            const Duration(seconds: 10),
          );
      responseJson = returnResponse(response);
    } on SocketException {
      throw ServerException('No Internet');
    } on RequestTimeout {
      throw RequestTimeout('Request Timeout');
    }
    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw InvalidUrlException('Invalid URL');
      default:
        throw FetchDataException(
            'Error Occured while making connection ${response.statusCode}');
    }
  }
}

import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/mvvm/data/app_exception.dart';
import 'package:flutter_application_1/mvvm/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;

class NetworkApiServices extends BaseApiServices {
  @override
  Future<dynamic> getApi(String url) async {
    if (kDebugMode) {
      print(url);
    }
    dynamic responseJson;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw ServerException('No Internet');
    } on RequestTimeout {
      throw RequestTimeout('Request Timeout');
    }
    return responseJson;
  }

  @override
  Future<dynamic> postApi(dynamic data, String url) async {
    if (kDebugMode) {
      print(url);
    }
    dynamic responseJson;
    try {
      final response = await http
          .post(
            Uri.parse(url),
            body: data,
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
    if (kDebugMode) {
      print(responseJson);
    }
    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        if (kDebugMode) {
          print(responseJson);
        }
        return responseJson;
      case 400:
        dynamic responseJson = jsonDecode(response.body);
        if (kDebugMode) {
          print(responseJson);
        }
        return responseJson;
      default:
        throw FetchDataException(
            'Error Occured while making connection ${response.statusCode}');
    }
  }
}

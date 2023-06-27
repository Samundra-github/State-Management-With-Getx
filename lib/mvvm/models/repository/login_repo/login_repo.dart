import 'package:flutter_application_1/mvvm/data/network/network_api.dart';
import 'package:flutter_application_1/mvvm/res/app_url/app_url.dart';

class LoginRepo {
  final _apiService = NetworkApiServices();

  Future<dynamic> loginApi(var data) async {
    dynamic response = _apiService.postApi(data, Api.login);
    return response;
  }
}

import 'package:flutter_application_1/mvvm/data/network/network_api.dart';
import 'package:flutter_application_1/mvvm/models/home/user_list.dart';
import 'package:flutter_application_1/mvvm/res/app_url/app_url.dart';

class HomeRepo {
  final _apiService = NetworkApiServices();

  Future<UserListModel> userListApi() async {
    dynamic response = await _apiService.getApi(Api.userListApi);
    return UserListModel.fromJson(response);
  }
}

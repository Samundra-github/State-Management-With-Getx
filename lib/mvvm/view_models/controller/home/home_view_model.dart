import 'package:flutter_application_1/mvvm/data/response/status.dart';
import 'package:flutter_application_1/mvvm/models/home/user_list.dart';
import 'package:flutter_application_1/mvvm/models/repository/home_repo/home_repo.dart';
import 'package:get/get.dart';

class HomeViewModel extends GetxController {
  final api = HomeRepo();

  final rxRequestStatus = Status.loading.obs;
  final userList = UserListModel().obs;

  RxString ERROR = ''.obs;

  void setRxRequestStatus(Status _value) => rxRequestStatus.value = _value;
  void setUserList(UserListModel _value) => userList.value = _value;
  void setError(String _value) => ERROR.value = _value;

  void userListApi() {
    api.userListApi().then((value) {
      setRxRequestStatus(Status.complete);
      setUserList(value);
    }).onError((ERROR, stackTrace) {
      setError(ERROR.toString());
      setRxRequestStatus(Status.error);
    });
  }

  void refreshApi() {
    setRxRequestStatus(Status.loading);
    api.userListApi().then((value) {
      setRxRequestStatus(Status.complete);
      setUserList(value);
    }).onError((ERROR, stackTrace) {
      setError(ERROR.toString());
      setRxRequestStatus(Status.error);
    });
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/mvvm/models/repository/login_repo/login_repo.dart';
import 'package:flutter_application_1/mvvm/utils/utils.dart';
import 'package:get/get.dart';

class LoginViewModel extends GetxController {
  final _api = LoginRepo();
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  final emailFocusNote = FocusNode().obs;
  final passwordFocusNote = FocusNode().obs;

  RxBool loading = false.obs;

  void loginApi() {
    loading.value = true;
    Map data = {
      'email': emailController.value.text,
      'password': passwordController.value.text,
    };
    _api.loginApi(data).then((value) {
      loading.value = false;
      if (value['error'] == 'user not found') {
        Utils.snackBar('Login', value['error']);
      } else {
        Utils.snackBar('Login', 'Login Successful');
      }
    }).onError((error, stackTrace) {
      loading.value = false;
      Utils.snackBar('Error', error.toString());
    });
  }
}

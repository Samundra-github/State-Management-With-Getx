import 'package:flutter/material.dart';
import 'package:flutter_application_1/mvvm/models/login/token_model.dart';
import 'package:flutter_application_1/mvvm/models/repository/login_repo/login_repo.dart';
import 'package:flutter_application_1/mvvm/res/routes/routes_name.dart';
import 'package:flutter_application_1/mvvm/utils/utils.dart';
import 'package:flutter_application_1/mvvm/view_models/controller/user_preference/user_preference.dart';
import 'package:get/get.dart';

class LoginViewModel extends GetxController {
  UserPreference userPreference = UserPreference();
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
        TokenGenerator tokenGenerator = TokenGenerator(
          token: value['token'],
          isLogin: true,
        );
        userPreference.saveUser(tokenGenerator).then((value) {
          Get.toNamed(RouteName.homeView);
        }).onError((error, stackTrace) {});
        Utils.snackBar('Login', 'Login Successful');
      }
    }).onError((error, stackTrace) {
      loading.value = false;
      Utils.snackBar('Error', error.toString());
    });
  }
}

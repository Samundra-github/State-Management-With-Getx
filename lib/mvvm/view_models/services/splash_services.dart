import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/mvvm/res/routes/routes_name.dart';
import 'package:flutter_application_1/mvvm/view_models/controller/user_preference/user_preference.dart';
import 'package:get/get.dart';

class SplashServices {
  UserPreference userPreference = UserPreference();
  void isLogin() {
    // checking if the user is already logged in or not
    userPreference.getUser().then((value) {
      if (kDebugMode) {
        print(value.token);
      }
      if (value.isLogin == false || value.isLogin.toString() == 'null') {
        Timer(const Duration(seconds: 3), () {
          Get.toNamed(RouteName.loginView);
        });
      } else {
        Timer(const Duration(seconds: 3), () {
          Get.toNamed(RouteName.homeView);
        });
      }
    });
  }
}

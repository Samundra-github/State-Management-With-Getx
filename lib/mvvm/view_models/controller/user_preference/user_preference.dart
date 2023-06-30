import 'package:flutter_application_1/mvvm/models/login/token_model.dart';

import 'package:shared_preferences/shared_preferences.dart';

class UserPreference {
  // To save the user
  Future<bool> saveUser(TokenGenerator tokenGenerator) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString('token', tokenGenerator.token.toString());
    sp.setBool('isLogin', tokenGenerator.isLogin!);
    return true;
  }

  // Get The user
  Future<TokenGenerator> getUser() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    String? token = sp.getString('token');
    bool? isLogin = sp.getBool('isLogin');

    return TokenGenerator(
      token: token,
      isLogin: isLogin,
    );
  }

  // Delete the user
  Future<bool> removeUser() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.clear();
    return true;
  }
}

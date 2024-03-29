import 'package:get/get_navigation/get_navigation.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'name': 'Samundra',
          'welcome_back': 'Welcome Back',
          'login': 'Login',
          'email_hint': 'Email',
          'password_hint': 'Password',
          'home': 'Home',
          'internet_exception':
              "We're unable to show results. \n Please check your internet connection. "
        },
        'np_NP': {
          'name': 'समुन्द्र',
          'welcome': 'स्वागत छ',
        },
      };
}

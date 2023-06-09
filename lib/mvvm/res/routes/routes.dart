import 'package:flutter_application_1/mvvm/res/routes/routes_name.dart';
import 'package:flutter_application_1/mvvm/view/login_screen.dart';
import 'package:flutter_application_1/mvvm/view/splash_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
          name: RouteName.splashScreen,
          page: () => const SplashScreen(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.leftToRight,
        ),
        GetPage(
          name: RouteName.loginScreen,
          page: () => const LoginScreen(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.rightToLeft,
        ),
      ];
}

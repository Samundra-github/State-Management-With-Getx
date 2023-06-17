import 'package:flutter/material.dart';
// import 'package:flutter_application_1/mvvm/data/app_exception.dart';
// import 'package:flutter_application_1/mvvm/utils/utils.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../res/routes/routes_name.dart';
// import 'package:flutter_application_1/mvvm/res/routes/routes_name.dart';
// import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   // appBar: AppBar(
    //   //   centerTitle: true,
    //   //   title: Text('appBar'.tr),
    //   // ),
    //   backgroundColor: Colors.white,
    //   body: Center(
    //     // child: ElevatedButton(
    //     //     onPressed: () {
    //     //       // Get.toNamed(RouteName.loginScreen);
    //     //       Utils.toastMessage('Hello Samundra');
    //     //     },
    //     //     child: const Text('Go TO Login')),
    //     child: Lottie.asset(
    //       'assets/icons/ground.json',
    //       fit: BoxFit.cover,
    //       repeat: false,
    //       animate: true,
    //       // onLoaded: (composition) {
    //       //   Future.delayed(const Duration(seconds: 5), () {
    //       //     Get.toNamed(RouteName.loginScreen);
    //       //   });
    //       // },
    //     ),
    //   ),
    //   // floatingActionButton: FloatingActionButton(onPressed: () {
    //   //   throw ServerException('Server Failed');
    //   // }),
    // );
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Lottie.asset(
              'assets/icons/football.json',
              repeat: false,
              onLoaded: (composition) {
                Future.delayed(const Duration(seconds: 2), () {
                  Get.toNamed(RouteName.loginScreen);
                });
              },
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: const Text(
                'World Football',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/mvvm/data/app_exception.dart';
import 'package:flutter_application_1/mvvm/res/routes/routes_name.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Get.toNamed(RouteName.loginScreen);
            },
            child: const Text('Go TO Login')),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        throw ServerException('Server Failed');
      }),
    );
  }
}

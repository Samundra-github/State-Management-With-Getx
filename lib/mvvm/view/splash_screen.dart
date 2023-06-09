import 'package:flutter/material.dart';
import 'package:flutter_application_1/mvvm/data/app_exception.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      floatingActionButton: FloatingActionButton(onPressed: () {
        throw ServerException('Server Failed');
      }),
    );
  }
}

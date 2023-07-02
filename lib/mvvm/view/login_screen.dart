import 'package:flutter/material.dart';
// import 'package:flutter_application_1/mvvm/res/assets/image_assets.dart';
import 'package:flutter_application_1/mvvm/res/routes/routes_name.dart';
import 'package:get/get.dart';

import '../res/components/reusable_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Login"),
      ),
      // body: SizedBox(
      //     height: Get.height * 1,
      //     width: Get.height * 1,
      //     child: const Image(
      //         fit: BoxFit.cover, image: AssetImage(ImageAssets.splash_image))),
      // body: Padding(
      //   padding: const EdgeInsets.only(right: 20, left: 20),
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       TextFormField(
      //         decoration: const InputDecoration(
      //           label: Text('Email'),
      //         ),
      //       ),
      //       const SizedBox(
      //         height: 20,
      //       ),
      //       TextFormField(
      //         obscureText: true,
      //         decoration: const InputDecoration(
      //           label: Text('Password'),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      body: Center(
        child: Column(
          children: [
            const ReusableButton(
              height: 50,
              width: 100,
              radius: 30,
              title: 'Login',
            ),
            SizedBox(
              height: Get.height * .1,
            ),
            const ReusableButton(
              height: 75,
              width: 200,
              radius: 30,
              title: 'Add to Cart',
              loading: false,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Get.toNamed(RouteName.splashScreen);
      }),
    );
  }
}

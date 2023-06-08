import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/getx_controller.dart';
import 'package:get/get.dart';

class TutorialFourA extends StatefulWidget {
  const TutorialFourA({super.key});

  @override
  State<TutorialFourA> createState() => _TutorialFourAState();
}

class _TutorialFourAState extends State<TutorialFourA> {
  LoginController loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Sign Up",
        ),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            right: 35,
            left: 35,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                controller: loginController.emailController.value,
                decoration: const InputDecoration(
                  hintText: 'Email',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: loginController.passwordController.value,
                decoration: const InputDecoration(
                  hintText: 'Password',
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Obx(
                () => InkWell(
                  onTap: () {
                    loginController.loginApi();
                  },
                  child: loginController.loading.value
                      ? const CircularProgressIndicator()
                      : Container(
                          height: 45,
                          color: Colors.grey,
                          child: const Center(
                            child: Text("Login"),
                          ),
                        ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

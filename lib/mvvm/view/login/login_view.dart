import 'package:flutter/material.dart';
import 'package:flutter_application_1/mvvm/res/components/reusable_button.dart';
import 'package:flutter_application_1/mvvm/utils/utils.dart';
import 'package:flutter_application_1/mvvm/view_models/controller/login_view_model.dart';
import 'package:get/get.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  LoginViewModel loginViewModel = Get.put(LoginViewModel());
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text('login'.tr),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    Obx(
                      () => TextFormField(
                        controller: loginViewModel.emailController.value,
                        focusNode: loginViewModel.emailFocusNote.value,
                        validator: (value) {
                          if (value!.isEmpty) {
                            Utils.snackBar('Email', 'Enter Email');
                          }
                          return;
                        },
                        onFieldSubmitted: (value) {
                          Utils.fieldFocusChange(
                              context,
                              loginViewModel.emailFocusNote.value,
                              loginViewModel.passwordFocusNote.value);
                        },
                        decoration: InputDecoration(
                          hintText: 'email_hint'.tr,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Obx(
                      () => TextFormField(
                        controller: loginViewModel.passwordController.value,
                        focusNode: loginViewModel.passwordFocusNote.value,
                        obscureText: true,
                        validator: (value) {
                          if (value!.isEmpty) {
                            Utils.snackBar('Password', 'Enter Password');
                          }
                          return;
                        },
                        onFieldSubmitted: (value) {},
                        decoration: InputDecoration(
                          hintText: 'password_hint'.tr,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              ReusableButton(
                height: 50,
                width: 100,
                title: 'login'.tr,
                onPress: () {
                  if (_formKey.currentState!.validate()) {}
                },
                radius: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}

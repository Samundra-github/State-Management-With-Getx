import 'package:flutter/material.dart';
import 'package:flutter_application_1/mvvm/res/routes/routes_name.dart';
import 'package:flutter_application_1/mvvm/view_models/controller/user_preference/user_preference.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  UserPreference userPreference = UserPreference();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                userPreference
                    .removeUser()
                    .then((value) => Get.toNamed(RouteName.loginView));
              },
              icon: const Icon(Icons.logout))
        ],
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text('home'.tr),
      ),
    );
  }
}

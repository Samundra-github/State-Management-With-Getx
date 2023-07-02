import 'package:flutter/material.dart';
import 'package:flutter_application_1/mvvm/data/response/status.dart';
import 'package:flutter_application_1/mvvm/res/colors/app_color.dart';
import 'package:flutter_application_1/mvvm/res/components/internet_exception.dart';
import 'package:flutter_application_1/mvvm/res/routes/routes_name.dart';
import 'package:flutter_application_1/mvvm/view_models/controller/home/home_view_model.dart';
import 'package:flutter_application_1/mvvm/view_models/controller/user_preference/user_preference.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final homeViewModel = Get.put(HomeViewModel());
  UserPreference userPreference = UserPreference();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeViewModel.userListApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primaryColor,
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
      // body: InternetExceptionWidget(onPress: () {}),
      body: Obx(() {
        switch (homeViewModel.rxRequestStatus.value) {
          case Status.loading:
            return const Center(
              child: CircularProgressIndicator(),
            );
          case Status.error:
            // if (homeViewModel.ERROR.value == 'No Internet') {
            //   return InternetExceptionWidget(
            //     onPress: () {},
            //   );
            // } else {
            //   print(homeViewModel.ERROR.toString());
            //   return Center(child: Text(homeViewModel.ERROR.toString()));
            // }
            return InternetExceptionWidget(
              onPress: () {
                homeViewModel.refreshApi();
              },
            );

          case Status.complete:
            final user = homeViewModel.userList.value.data!;
            return ListView.builder(
                itemCount: user.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: AppColor.whiteColor,
                    child: ListTile(
                      // leading: Container(
                      //   height: 95,
                      //   width: 55,
                      //   child: ClipOval(
                      //     child: Image.network(
                      //       user[index].avatar.toString(),
                      //       fit: BoxFit.cover,
                      //     ),
                      //   ),
                      // ),
                      leading: CircleAvatar(
                        backgroundImage:
                            NetworkImage(user[index].avatar.toString()),
                      ),
                      title: Text(user[index].firstName.toString()),
                      subtitle: Text(user[index].email.toString()),
                    ),
                  );
                });
        }
      }),
    );
  }
}

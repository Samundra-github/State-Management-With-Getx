import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class GetxHome extends StatefulWidget {
  const GetxHome({super.key});

  @override
  State<GetxHome> createState() => _GetxHomeState();
}

class _GetxHomeState extends State<GetxHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        elevation: 0.9,
        centerTitle: true,
        title: const Text("Getx Practice"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Card(
              child: ListTile(
                title: const Text("Dialog Alert"),
                subtitle: const Text("Click Here for dialog box"),
                onTap: () {
                  Get.defaultDialog(
                      title: 'Delete',
                      titlePadding: const EdgeInsets.only(top: 20),
                      contentPadding: const EdgeInsets.all(20),
                      confirm: TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: const Text('Yes'),
                      ),
                      cancel: TextButton(
                        onPressed: () {},
                        child: const Text('No'),
                      ),
                      content: const Column(
                        children: [Text("Are you sure you want to delete it?")],
                      ));
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Card(
              child: ListTile(
                  title: const Text("Theme Change"),
                  subtitle: const Text("Click Here to change theme"),
                  onTap: () {
                    Get.bottomSheet(
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          children: [
                            ListTile(
                              leading: const FaIcon(FontAwesomeIcons.sun),
                              title: const Text("Light Theme"),
                              onTap: () {
                                Get.changeTheme(ThemeData.light());
                              },
                            ),
                            ListTile(
                              leading: const FaIcon(FontAwesomeIcons.moon),
                              title: const Text("Dark Theme"),
                              onTap: () {
                                Get.changeTheme(ThemeData.dark());
                              },
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ),
          TextButton(
            onPressed: () {
              // Get.to(() => const TutorialOne(
              //       name: 'Samundra Bhandari',
              //     ));
              // Get.toNamed('/tut_one', arguments: [
              //   'Samundra Bhandari',
              // ]);
              // Get.toNamed('/tut_two_a');
              // Get.toNamed('/tut_two_b');
              // Get.toNamed('/tut_three_b');
              Get.toNamed('/tut_three_c');
            },
            child: const Text("Next Page"),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar(
            "Samundra Bhandari",
            "Welcome to World Football.",
            colorText: Colors.white,
            backgroundColor: Colors.red,
            snackPosition: SnackPosition.BOTTOM,
          );
        },
      ),
    );
  }
}

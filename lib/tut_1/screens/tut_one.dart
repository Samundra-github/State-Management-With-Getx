// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/tut_1/screens/tut_one_a.dart';
import 'package:get/get.dart';

class TutorialOne extends StatefulWidget {
  var name;
  TutorialOne({super.key, this.name});

  @override
  State<TutorialOne> createState() => _TutorialOneState();
}

class _TutorialOneState extends State<TutorialOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.9,
        title: Text("Welcome ${Get.arguments[0]}"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () {
                Get.back();
              },
              child: const Text("Go back"),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: TextButton(
              onPressed: () {
                Get.to(() => const TuttorialOneA());
              },
              child: const Text("Go To Next Page"),
            ),
          ),
        ],
      ),
    );
  }
}

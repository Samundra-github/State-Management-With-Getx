import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TuttorialOneB extends StatefulWidget {
  const TuttorialOneB({super.key});

  @override
  State<TuttorialOneB> createState() => _TuttorialOneBState();
}

class _TuttorialOneBState extends State<TuttorialOneB> {
  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height * 1;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.9,
        title: const Text("Tutorial One B"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: Get.height * .1,
            color: Colors.black,
            child: Center(
              child: TextButton(
                onPressed: () {
                  Get.toNamed('/tut_one_c');
                },
                child: const Text(
                  "Go to Language Translation",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            height: Get.height * .1,
            color: Colors.blue,
            child: Center(
              child: TextButton(
                onPressed: () {
                  Get.back();
                  Get.back();
                  Get.back();
                },
                child: const Text(
                  "Go back to Home",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

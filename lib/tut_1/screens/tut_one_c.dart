import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TuttorialOneC extends StatefulWidget {
  const TuttorialOneC({super.key});

  @override
  State<TuttorialOneC> createState() => _TuttorialOneCState();
}

class _TuttorialOneCState extends State<TuttorialOneC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.9,
        title: const Text("Language Translation"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: Get.height * .1,
            child: Center(
              child: ListTile(
                title: Text('name'.tr),
                subtitle: Text('message'.tr),
              ),
            ),
          ),
          SizedBox(
            height: Get.height * 0.01,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                OutlinedButton(
                  onPressed: () {
                    Get.updateLocale(const Locale('en', 'US'));
                  },
                  child: const Text('English'),
                ),
                SizedBox(
                  width: Get.width * 0.2,
                ),
                OutlinedButton(
                  onPressed: () {
                    Get.updateLocale(const Locale('np', 'NP'));
                  },
                  child: const Text('नेपाली'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

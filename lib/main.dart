import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_screen.dart';
import 'package:flutter_application_1/tut_1/language.dart';
import 'package:flutter_application_1/tut_1/screens/tut_one.dart';
import 'package:flutter_application_1/tut_1/screens/tut_one_a.dart';
import 'package:flutter_application_1/tut_1/screens/tut_one_b.dart';
import 'package:flutter_application_1/tut_1/screens/tut_one_c.dart';
import 'package:flutter_application_1/tut_2/screens/tut_2_a.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // locale: Locale('en', 'US'),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
      ),
      translations: Languages(),
      locale: const Locale('en', 'US'),

      fallbackLocale: const Locale('en', 'US'),
      home: const GetxHome(),
      getPages: [
        GetPage(name: '/', page: () => const GetxHome()),
        GetPage(name: '/tut_one', page: () => TutorialOne()),
        GetPage(name: '/tut_one_a', page: () => const TuttorialOneA()),
        GetPage(name: '/tut_one_b', page: () => const TuttorialOneB()),
        GetPage(name: '/tut_one_c', page: () => const TuttorialOneC()),
        GetPage(name: '/tut_two_a', page: () => const TuttorialTwoA()),
      ],
    );
  }
}

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/getx_controller.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class TutorialThreeC extends StatefulWidget {
  const TutorialThreeC({super.key});

  @override
  State<TutorialThreeC> createState() => _TutorialThreeCState();
}

class _TutorialThreeCState extends State<TutorialThreeC> {
  ImagePickerController imagePickerController =
      Get.put(ImagePickerController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("Image Picker"),
        centerTitle: true,
      ),
      body: Obx(
        () => Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
                height: 150,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: imagePickerController.imagePath.isNotEmpty
                      ? FileImage(
                          File(imagePickerController.imagePath.toString()))
                      : null,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                imagePickerController.getImageFromCamera();
              },
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Take a Photo"),
                  SizedBox(
                    width: 10,
                  ),
                  FaIcon(
                    FontAwesomeIcons.solidSquarePlus,
                    size: 30,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                imagePickerController.getImageFromGallery();
              },
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Pick a Photo"),
                  SizedBox(
                    width: 10,
                  ),
                  FaIcon(
                    FontAwesomeIcons.photoFilm,
                    size: 30,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

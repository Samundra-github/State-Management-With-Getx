import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Basic%20Getx%20Practice/controller/getx_controller.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class TutorialThreeB extends StatefulWidget {
  const TutorialThreeB({super.key});

  @override
  State<TutorialThreeB> createState() => _TutorialThreeBState();
}

class _TutorialThreeBState extends State<TutorialThreeB> {
  FavoritesController favoritesController = Get.put(FavoritesController());
  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print("object");
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add to Favoritues"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: ListView.builder(
        itemCount: favoritesController.clubList.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () {
                if (favoritesController.favoriteClub
                    .contains(favoritesController.clubList[index].toString())) {
                  favoritesController.removeFromFavorite(
                      favoritesController.clubList[index].toString());
                } else {
                  favoritesController.addToFavorite(
                      favoritesController.clubList[index].toString());
                }
              },
              title: Text(favoritesController.clubList[index].toString()),
              trailing: Obx(
                () => FaIcon(
                  FontAwesomeIcons.solidHeart,
                  color: favoritesController.favoriteClub.contains(
                          favoritesController.clubList[index].toString())
                      ? Colors.red
                      : Colors.white,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../models/animal_model.dart';

class PetAboutWidget extends StatelessWidget {
  final AnimalModel animalModel;
  const PetAboutWidget({super.key, required this.animalModel});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.width * 0.44,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "About",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              animalModel.about,
              style: TextStyle(
                  color: Colors.grey.shade500, fontSize: 15, wordSpacing: 2),
            ),
          ],
        ),
      ),
    );
  }
}

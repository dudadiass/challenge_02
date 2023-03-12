import 'package:flutter/material.dart';

import '../../models/animal_model.dart';

class PetAboutWidget extends StatelessWidget {
  final AnimalModel animalModel;
  const PetAboutWidget({super.key, required this.animalModel});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.90,
      height: size.height * 0.20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("About"),
          Text(
            animalModel.about,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../models/animal_model.dart';

class PetAboutWidget extends StatelessWidget {
  final AnimalModel animalModel;
  const PetAboutWidget({super.key, required this.animalModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("About"),
        Text(
          animalModel.about,
        ),
      ],
    );
  }
}

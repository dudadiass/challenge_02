import 'package:flutter/material.dart';

import '../models/animal_model.dart';

class AnimalRepository {
  final animalList = <AnimalModel>[
    AnimalModel(
      gender: AnimalGender.female,
      name: "Sparky",
      breed: "Golden Retrieve",
      age: "5",
      localization: "Matinhos, PR, Brazil",
      isFavorite: false,
      about: "",
      cardImage: "assets/images/golden_retriever/golden-retriever-7.png",
      mainImage: "",
      colour: Colors.amber.shade300,
      galleryImages: [""],
    ),
  ];
}

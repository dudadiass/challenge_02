import 'package:flutter/material.dart';

import '../models/animal_model.dart';

class AnimalRepository {
  final animalList = [
    AnimalModel(
      gender: AnimalGender.female,
      name: "Sparky",
      breed: "Golden Retriever",
      age: "5 months old",
      localization: "Matinhos, PR, Brazil",
      isFavorite: false,
      about: "",
      cardImage: "assets/images/golden_retriever/golden_retriever_01.png",
      mainImage: "",
      colour: Colors.amber.shade200,
      galleryImages: [""],
    ),
    AnimalModel(
      gender: AnimalGender.male,
      name: "Jack",
      breed: "Russell Terrier",
      age: "2 years old",
      localization: "Matinhos, PR, Brazil",
      isFavorite: false,
      about: "",
      cardImage:
          "assets/images/jack_russell_terrier/jack_russell_terrier_01.png",
      mainImage: "",
      colour: Colors.blue.shade200,
      galleryImages: [""],
    ),
  ];
}

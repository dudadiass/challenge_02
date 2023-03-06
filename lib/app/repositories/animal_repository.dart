import 'package:flutter/material.dart';

import '../models/animal_model.dart';

class AnimalRepository {
  final animalList = [
    AnimalModel(
      gender: AnimalGender.female,
      name: "Sparky",
      breed: "Golden Retriever",
      age: "8 months old",
      localization: "2.5 kms away",
      isFavorite: false,
      about: "",
      cardImage:
          "assets/images/pets/dogs/golden_retriever/golden_retriever_01.png",
      mainImage: "",
      colour: Colors.amber.shade200,
      galleryImages: [""],
    ),
    AnimalModel(
      gender: AnimalGender.male,
      name: "Charlie",
      breed: "Jack Russell Terrier",
      age: "1.5 years old",
      localization: "2.6 kms away",
      isFavorite: false,
      about: "",
      cardImage:
          "assets/images/pets/dogs/jack_russell_terrier/jack_russell_terrier_01.png",
      mainImage: "",
      colour: Colors.green.shade200,
      galleryImages: [""],
    ),
    AnimalModel(
      gender: AnimalGender.male,
      name: "Max",
      breed: "Siberian Husky",
      age: "1 year old",
      localization: "Matinhos, PR, Brazil",
      isFavorite: false,
      about: "",
      cardImage: "assets/images/pets/dogs/siberian_husky/siberian_husky_01.png",
      mainImage: "",
      colour: Colors.blue.shade200,
      galleryImages: [""],
    ),
  ];
}

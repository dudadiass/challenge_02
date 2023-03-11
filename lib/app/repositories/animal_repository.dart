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
      about:
          "She is shy at first, but will warm up when she's comfortable. She is not a ranch dog that guards animals and property as she whould rather be with her people; but she is comfortable around animals. She plays well with other dogs.",
      cardImage:
          "assets/images/pets/dogs/golden_retriever/golden_retriever_01.png",
      mainImage:
          "assets/images/pets/dogs/golden_retriever/golden_retriever_07.png",
      colour: Colors.amber.shade200,
      galleryImages: [
        "assets/images/pets/dogs/golden_retriever/golden_retriever_02.png",
        "assets/images/pets/dogs/golden_retriever/golden_retriever_03.png",
        "assets/images/pets/dogs/golden_retriever/golden_retriever_04.png",
        "assets/images/pets/dogs/golden_retriever/golden_retriever_05.png",
        "assets/images/pets/dogs/golden_retriever/golden_retriever_06.png",
      ],
    ),
    AnimalModel(
      gender: AnimalGender.male,
      name: "Charlie",
      breed: "Jack Russell Terrier",
      age: "1.5 years old",
      localization: "2.6 kms away",
      isFavorite: false,
      about:
          "He is shy at first, but will warm up when he's comfortable. He is not a ranch dog that guards animals and property as he whould rather be with his people; but he is comfortable around animals. He plays well with other dogs.",
      cardImage:
          "assets/images/pets/dogs/jack_russell_terrier/jack_russell_terrier_01.png",
      mainImage:
          "assets/images/pets/dogs/jack_russell_terrier/jack_russell_terrier_05.png",
      colour: Colors.green.shade200,
      galleryImages: [
        "assets/images/pets/dogs/jack_russell_terrier/jack_russell_terrier_02.png",
        "assets/images/pets/dogs/jack_russell_terrier/jack_russell_terrier_03.png",
        "assets/images/pets/dogs/jack_russell_terrier/jack_russell_terrier_04.png",
      ],
    ),
    AnimalModel(
      gender: AnimalGender.male,
      name: "Max",
      breed: "Siberian Husky",
      age: "1 year old",
      localization: "2.9 kms away",
      isFavorite: false,
      about:
          "He is shy at first, but will warm up when he's comfortable. He is not a ranch dog that guards animals and property as he whould rather be with his people; but he is comfortable around animals. He plays well with other dogs.",
      cardImage: "assets/images/pets/dogs/siberian_husky/siberian_husky_01.png",
      mainImage: "assets/images/pets/dogs/siberian_husky/siberian_husky_07.png",
      colour: Colors.blue.shade200,
      galleryImages: [
        "assets/images/pets/dogs/siberian_husky/siberian_husky_02.png",
        "assets/images/pets/dogs/siberian_husky/siberian_husky_03.png",
        "assets/images/pets/dogs/siberian_husky/siberian_husky_04.png",
        "assets/images/pets/dogs/siberian_husky/siberian_husky_05.png",
        "assets/images/pets/dogs/siberian_husky/siberian_husky_06.png",
      ],
    ),
    AnimalModel(
      gender: AnimalGender.female,
      name: "Daisy",
      breed: "Pug",
      age: "7 months old",
      localization: "3.1 kms away",
      isFavorite: false,
      about:
          "She is shy at first, but will warm up when she's comfortable. She is not a ranch dog that guards animals and property as she whould rather be with her people; but she is comfortable around animals. She plays well with other dogs.",
      cardImage: "assets/images/pets/dogs/pug/pug_01.png",
      mainImage: "",
      colour: Colors.orange.shade200,
      galleryImages: [""],
    ),
  ];
}

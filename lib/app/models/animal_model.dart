import 'package:flutter/material.dart';

enum AnimalGender { male, female }

class AnimalModel {
  final AnimalGender gender;
  final String name;
  final String breed;
  final String age;
  final String localization;
  final bool isFavorite;
  final String about;
  final String cardImage;
  final String mainImage;
  final Color colour;
  final List<String> galleryImages;

  AnimalModel({
    required this.gender,
    required this.name,
    required this.breed,
    required this.age,
    required this.localization,
    required this.isFavorite,
    required this.about,
    required this.cardImage,
    required this.mainImage,
    required this.colour,
    required this.galleryImages,
  });

  get animalList => null;
}

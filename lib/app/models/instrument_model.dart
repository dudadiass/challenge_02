import 'package:flutter/material.dart';

enum InstumentType { string, percussion, eletric }

class InstrumentModel {
  final String brand; //marca
  final String model; //modelo
  final Color colour;
  final String number;
  final InstumentType type;
  final String description; //descricao
  final String season; //decada
  final String instrumentImage;
  final List<String> instrumentGalleryImages;

  InstrumentModel({
    required this.brand,
    required this.instrumentImage,
    required this.description,
    required this.season,
    required this.number,
    required this.type,
    required this.colour,
    required this.model,
    required this.instrumentGalleryImages,
  });
}

import 'package:flutter/material.dart';

import '../models/animal_model.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final AnimalModel animalModel =
        ModalRoute.of(context)!.settings.arguments as AnimalModel;
    return const Scaffold(
      body: Text('hello'),
    );
  }
}

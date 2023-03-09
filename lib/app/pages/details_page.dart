import 'package:flutter/material.dart';

import '../models/animal_model.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final AnimalModel animalModel =
        ModalRoute.of(context)!.settings.arguments as AnimalModel;
    return Scaffold(
      appBar: AppBar(
        title: const Text("hello"),
      ),
      body: Center(
        child: Container(
          child: const Text('hello'),
        ),
      ),
    );
  }
}

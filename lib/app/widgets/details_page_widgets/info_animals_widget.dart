import 'package:challenge_02/app/models/animal_model.dart';
import 'package:flutter/material.dart';

class InfoWidget extends StatelessWidget {
  final AnimalModel animalModel;
  const InfoWidget({
    super.key,
    required this.animalModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Text(animalModel.name),
                    ],
                  ),
                  Row(
                    children: [
                      Text(animalModel.breed),
                    ],
                  ),
                  Row(
                    children: [
                      Text(animalModel.localization),
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  Row(
                    children: const [
                      Icon(Icons.male_outlined),
                    ],
                  ),
                  Row(
                    children: [
                      Text(animalModel.age),
                    ],
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

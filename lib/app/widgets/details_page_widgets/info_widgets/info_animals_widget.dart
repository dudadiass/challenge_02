import 'package:challenge_02/app/models/animal_model.dart';
import 'package:flutter/material.dart';

class SliverToBoxAdapterWidget extends StatelessWidget {
  final AnimalModel animalModel;
  const SliverToBoxAdapterWidget({
    super.key,
    required this.animalModel,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
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
                children: [
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
    );
  }
}

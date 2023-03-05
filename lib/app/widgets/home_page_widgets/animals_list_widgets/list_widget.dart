import 'package:challenge_02/app/widgets/home_page_widgets/animals_list_widgets/card_widget.dart';
import 'package:flutter/material.dart';

import '../../../repositories/animal_repository.dart';

class SliverListWidget extends StatelessWidget {
  final AnimalRepository animalRepository;
  SliverListWidget({
    super.key,
    required this.animalRepository,
  });
  final animals = AnimalRepository().animalList;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: animals.length,
        (_, index) {
          return Container(
            color: Colors.grey.shade200,
            child: Column(
              children: [
                CardWidget(
                  animalRepository: animalRepository,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

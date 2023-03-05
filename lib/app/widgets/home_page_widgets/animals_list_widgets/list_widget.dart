import 'package:challenge_02/app/widgets/home_page_widgets/animals_list_widgets/card_widget.dart';
import 'package:flutter/material.dart';

import '../../../repositories/animal_repository.dart';

class SliverListWidget extends StatelessWidget {
  SliverListWidget({super.key});
  final AnimalRepository animalRepository = AnimalRepository();

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: animalRepository.animalList.length,
        (_, index) {
          final animalModel = animalRepository.animalList[index];
          return Container(
            color: Colors.grey.shade200,
            child: Column(
              children: [
                CardWidget(
                  animalModel: animalModel,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

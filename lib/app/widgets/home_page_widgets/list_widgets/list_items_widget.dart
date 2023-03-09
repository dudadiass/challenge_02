import 'package:challenge_02/app/widgets/home_page_widgets/list_widgets/card_widget.dart';
import 'package:flutter/material.dart';
import '../../../repositories/animal_repository.dart';

class SliverListWidget extends StatelessWidget {
  final AnimalRepository animalRepository;
  const SliverListWidget({
    super.key,
    required this.animalRepository,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: animalRepository.animalList.length,
        (_, index) {
          final animals = animalRepository.animalList[index];
          return Container(
            color: Colors.grey.shade100,
            child: Column(
              children: [
                CardWidget(
                  animalModel: animals,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

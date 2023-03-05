import 'package:challenge_02/app/models/animal_model.dart';
import 'package:challenge_02/app/repositories/animal_repository.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final AnimalModel animalModel;

  const CardWidget({
    super.key,
    required this.animalModel,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.all(10),
      width: size.width * 0.90, //330,
      height: size.height * 0.17, //130
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(10, 10, 0, 10),
            width: size.width * 0.3,
            decoration: BoxDecoration(
              color: animalModel.colour,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset(animalModel.cardImage),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  animalModel.name,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  animalModel.breed,
                  style: const TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(40, 10, 10, 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

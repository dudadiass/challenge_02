import 'package:challenge_02/app/repositories/animal_repository.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final AnimalRepository animalRepository;
  const CardWidget({
    super.key,
    required this.animalRepository,
  });

  @override
  Widget build(BuildContext context) {
    var index = 0;
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
              color: animalRepository.animalList[index].colour,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset(animalRepository.animalList[index].cardImage),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  animalRepository.animalList[index].name,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  animalRepository.animalList[index].breed,
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

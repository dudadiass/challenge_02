import 'package:challenge_02/app/models/animal_model.dart';
import 'package:challenge_02/app/repositories/animal_repository.dart';
import 'package:challenge_02/app/shared/theme/app_theme.dart';
import 'package:flutter/material.dart';

import '../../../utils/routes.dart';

class CardWidget extends StatelessWidget {
  final int index;
  const CardWidget({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final animals = AnimalRepository().animalList;
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => Navigator.of(context)
          .pushNamed(AppRouter.details, arguments: animals),
      child: Container(
        margin: const EdgeInsets.all(10),
        width: size.width * 0.90, //330,
        height: size.height * 0.17, //130
        decoration: BoxDecoration(
          color: AppTheme.backgroundColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                  width: size.width * 0.28,
                  decoration: BoxDecoration(
                    color: animals[index].colour,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset(animals[index].cardImage),
                ),
              ],
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              animals[index].name,
                              style: AppTheme.themeData().textTheme.headline1,
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 5),
                          child: Row(
                            children: [
                              Text(
                                animals[index].breed,
                                style: AppTheme.themeData().textTheme.headline4,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 5),
                          child: Row(
                            children: [
                              Text(
                                '${animals[index].gender.type}, ${animals[index].age}',
                                style: AppTheme.themeData().textTheme.headline5,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 18),
                          child: Row(
                            children: [
                              const Icon(
                                size: 18,
                                Icons.location_pin,
                                color: Colors.red,
                              ),
                              Text(
                                animals[index].localization,
                                style: AppTheme.themeData().textTheme.headline5,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: const [
                        Icon(
                          Icons.favorite,
                          size: 25,
                          color: Colors.redAccent,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

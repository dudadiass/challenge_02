import 'package:challenge_02/app/models/animal_model.dart';
import 'package:challenge_02/app/shared/theme/app_theme.dart';
import 'package:flutter/material.dart';

import '../../../utils/routes.dart';

class CardWidget extends StatelessWidget {
  final AnimalModel animalModel;
  const CardWidget({
    super.key,
    required this.animalModel,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, AppRouter.details,
          arguments: animalModel),
      child: Container(
        margin: const EdgeInsets.all(10),
        width: size.width * 0.85, //318.75
        decoration: BoxDecoration(
          color: AppTheme.backgroundColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(children: [
          Column(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                width: size.width * 0.27, //101.25
                decoration: BoxDecoration(
                  color: animalModel.colour,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(animalModel.cardImage),
              ),
            ],
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(13),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        animalModel.name,
                        style: AppTheme.themeData().textTheme.headline2,
                      ),
                      const Icon(
                        Icons.favorite,
                        color: AppTheme.primaryColor,
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 5),
                    child: Row(
                      children: [
                        Text(
                          animalModel.breed,
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
                          '${animalModel.gender.type}, ${animalModel.age}',
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
                          animalModel.localization,
                          style: AppTheme.themeData().textTheme.headline5,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

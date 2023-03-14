import 'package:challenge_02/app/models/animal_model.dart';
import 'package:challenge_02/app/shared/theme/app_theme.dart';
import 'package:flutter/material.dart';

class InfoWidget extends StatelessWidget {
  final AnimalModel animalModel;
  const InfoWidget({
    super.key,
    required this.animalModel,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.15,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    animalModel.name,
                    style: AppTheme.themeData().textTheme.headline1,
                  ),
                  Icon(Icons.male_outlined,
                      size: size.height * 0.06, color: AppTheme.iconPets),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    animalModel.breed,
                    style: AppTheme.themeData().textTheme.headline3,
                  ),
                  Text(
                    animalModel.age,
                    style: AppTheme.themeData().textTheme.headline3,
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Row(
              children: [
                const Icon(
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
    );
  }
}

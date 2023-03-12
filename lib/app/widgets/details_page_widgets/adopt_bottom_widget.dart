import 'package:challenge_02/app/shared/theme/app_theme.dart';
import 'package:flutter/material.dart';

class AdoptBottomWidget extends StatelessWidget {
  const AdoptBottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 200,
          height: 70,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(35)),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.pets_outlined,
                  color: AppTheme.iconPets2,
                ),
                Text(
                  "Adopt",
                  style: TextStyle(color: AppTheme.textColor3),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

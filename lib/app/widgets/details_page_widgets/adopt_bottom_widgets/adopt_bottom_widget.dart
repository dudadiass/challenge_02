import 'package:challenge_02/app/shared/theme/app_theme.dart';
import 'package:flutter/material.dart';

class AdoptBottomWidget extends StatelessWidget {
  const AdoptBottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: size.width * 0.54,
          height: size.width * 0.21,
          decoration: const BoxDecoration(
            color: AppTheme.primaryColor,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(60)),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.pets_outlined,
                  color: AppTheme.iconPets2,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "ADOPT",
                  style: TextStyle(color: AppTheme.textColor3, fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

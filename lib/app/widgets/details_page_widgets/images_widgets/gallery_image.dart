import 'package:flutter/material.dart';

import '../../../shared/theme/app_theme.dart';

class PetGalleryImageWidget extends StatelessWidget {
  final String image;
  const PetGalleryImageWidget({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 20),
      child: Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            border: Border.all(color: AppTheme.textColor2),
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(image),
            ),
          )),
    );
  }
}

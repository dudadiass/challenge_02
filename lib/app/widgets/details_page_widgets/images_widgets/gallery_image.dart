import 'package:flutter/material.dart';

import '../../../shared/theme/app_theme.dart';

class PetGalleryImageWidget extends StatelessWidget {
  final String image;
  const PetGalleryImageWidget({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 20),
      child: Container(
          width: size.width * 0.187, //70
          height: size.height * 0.105, //70
          decoration: BoxDecoration(
            color: AppTheme.backgroundContainer,
            border: Border.all(color: AppTheme.textColor2),
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(image),
            ),
          )),
    );
  }
}

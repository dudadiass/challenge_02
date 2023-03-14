import 'package:flutter/material.dart';

import 'gallery_image.dart';

class GalleryImagesWidget extends StatelessWidget {
  final Color color;
  final String mainImage;
  final List<String> galleryImage;

  const GalleryImagesWidget({
    super.key,
    required this.mainImage,
    required this.galleryImage,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 93,
          height: 300,
          child: Stack(alignment: Alignment.bottomCenter, children: [
            ListView.builder(
              itemCount: galleryImage.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (_, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 18),
                  child: PetGalleryImageWidget(image: galleryImage[index]),
                );
              },
            ),
            Container(
              height: 60,
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.transparent,
                    Colors.transparent,
                    Colors.transparent,
                    Colors.white.withOpacity(0.1),
                    Colors.white,
                  ],
                ),
              ),
            )
          ]),
        ),
        Expanded(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned.fill(
                right: (-150),
                child: Container(
                  decoration: BoxDecoration(
                    color: color,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Image.asset(
                mainImage,
                alignment: Alignment.centerRight,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:challenge_02/app/shared/theme/app_theme.dart';
import 'package:flutter/material.dart';

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
    final mediaQueryData = MediaQuery.of(context);
    return Row(
      children: [
        Container(
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
            border: Border.all(color: Colors.grey.shade700),
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(image),
            ),
          )),
    );
  }
}

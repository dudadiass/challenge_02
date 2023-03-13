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
          child: ListView.builder(
            itemCount: galleryImage.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (_, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 18),
                child: PetGalleryImageWidget(image: galleryImage[index]),
              );
            },
          ),
        ),
        Expanded(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned.fill(
                right: (300 * 0.5) * -1,
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
        width: 50,
        height: 70,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color.fromARGB(0, 255, 255, 255),
              Theme.of(context).backgroundColor,
            ],
          ),
          border: Border.all(color: Colors.grey.shade700),
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}

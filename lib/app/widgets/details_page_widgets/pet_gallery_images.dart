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
    return Row(
      children: [
        Container(
          color: Colors.red,
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
          child: Container(
            color: Colors.blue,
            child: Image.asset(
              mainImage,
              alignment: Alignment.centerRight,
            ),
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
    return Container(
      width: 50,
      height: 70,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
        ),
      ),
    );
  }
}

import 'package:challenge_02/app/widgets/details_page_widgets/adopt_bottom_widgets/adopt_bottom_widget.dart';
import 'package:challenge_02/app/widgets/details_page_widgets/app_bar_widgets/app_bar_items_widget.dart';
import 'package:challenge_02/app/widgets/details_page_widgets/info_widgets/info_animals_widget.dart';
import 'package:flutter/material.dart';

import '../models/animal_model.dart';
import '../widgets/details_page_widgets/about_widgets/about_widget.dart';
import '../widgets/details_page_widgets/images_widgets/main_image_widget.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    late AnimalModel animalModel;
    final args = ModalRoute.of(context)?.settings.arguments;
    if (args != null) {
      animalModel = args as AnimalModel;
    }
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const AppBarWidget(),
            InfoWidget(animalModel: animalModel),
            GalleryImagesWidget(
                mainImage: animalModel.mainImage,
                galleryImage: animalModel.galleryImages,
                color: animalModel.colour),
            PetAboutWidget(
              animalModel: animalModel,
            ),
            const AdoptBottomWidget(),
          ],
        ),
      ),
    );
  }
}

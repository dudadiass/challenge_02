import 'package:challenge_02/app/widgets/details_page_widgets/app_bar_widgets/app_bar_items_widget.dart';
import 'package:challenge_02/app/widgets/details_page_widgets/info_widgets/info_animals_widget.dart';
import 'package:flutter/material.dart';

import '../models/animal_model.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final AnimalModel animalModel =
        ModalRoute.of(context)!.settings.arguments as AnimalModel;
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        const SliverAppBarWidget(),
        SliverToBoxAdapterWidget(animalModel: animalModel),
      ],
    ));
  }
}

import 'package:challenge_02/app/repositories/animal_repository.dart';
import 'package:challenge_02/app/widgets/home_page_widgets/list_widgets/list_items_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/home_page_widgets/app_bar_widgets/app_bar_items_widget.dart';
import '../widgets/home_page_widgets/category_widgets/category_list_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final AnimalRepository animals = AnimalRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppBarTheme.of(context).backgroundColor,
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBarWidget(),
          const SliverToBoxAdapterTopWidget(),
          const CategoryListWidget(),
          SliverListWidget(
            animalRepository: animals,
          ),
        ],
      ),
    );
  }
}

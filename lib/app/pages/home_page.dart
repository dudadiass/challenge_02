import 'package:flutter/material.dart';

import '../widgets/sliver_app_bar_widget.dart';
import '../widgets/sliver_to_box_adapter_widget.dart';
import '../widgets/sliver_to_box_adapter_top_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBarWidget(),
          SliverToBoxAdapterTopWidget(),
          SliverTpBoxAdapterWidget(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../widgets/card_instrument_widget.dart';
import '../widgets/slivers_widgets/sliver_app_bar_widget.dart';
import '../widgets/slivers_widgets/sliver_to_box_adapter_widget.dart';
import '../widgets/slivers_widgets/sliver_to_box_adapter_top_widget.dart';
import '../repositories/instrument_repository.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBarWidget(),
          const SliverToBoxAdapterTopWidget(),
          const SliverTpBoxAdapterWidget(),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: instrumentList.length,
              (_, index) {
                final instrumentModel = instrumentList[index];
                return Container(
                  color: Colors.grey.shade200,
                  child: Column(
                    children: [
                      CardInstrumentWidget(
                        instrumentModel: instrumentModel,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../category_widget.dart';

class SliverTpBoxAdapterWidget extends StatefulWidget {
  const SliverTpBoxAdapterWidget({super.key});

  @override
  State<SliverTpBoxAdapterWidget> createState() =>
      _SliverTpBoxAdapterWidgetState();
}

class _SliverTpBoxAdapterWidgetState extends State<SliverTpBoxAdapterWidget> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 70,
        color: Colors.grey.shade200,
        child: ListView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(left: 20, right: 20),
          children: const [
            CategoryWidget(title: '', iconData: Icons.tune),
            CategoryWidget(
              title: 'Guitar',
              iconData: Icons.music_note,
              isSelected: true,
            ),
            CategoryWidget(
              title: 'Drums',
              iconData: Icons.music_note,
            ),
            CategoryWidget(
              title: 'Bass',
              iconData: Icons.music_note,
            ),
            CategoryWidget(
              title: 'Piano',
              iconData: Icons.music_note,
            ),
          ],
        ),
      ),
    );
  }
}

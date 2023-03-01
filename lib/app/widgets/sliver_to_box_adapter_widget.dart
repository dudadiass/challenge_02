import 'package:flutter/material.dart';

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
          padding: const EdgeInsets.symmetric(horizontal: 8),
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CardInstrumentWidget extends StatelessWidget {
  const CardInstrumentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      width: 330,
      height: 130,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}

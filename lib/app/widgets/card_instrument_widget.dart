import 'package:challenge_02/app/models/instrument_model.dart';
import 'package:flutter/material.dart';

class CardInstrumentWidget extends StatelessWidget {
  final InstrumentModel instrumentModel;
  const CardInstrumentWidget({super.key, required this.instrumentModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      width: 330,
      height: 130,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}

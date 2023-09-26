import 'package:flutter/material.dart';
import 'package:flutter_class/instument/instument_card.dart';

class InstrumentList extends StatelessWidget {
  const InstrumentList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: InstrumentCard(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_class/instument/instument_card.dart';
import 'package:flutter_class/product_widgets/my_appbar.dart';

class InstrumentList extends StatelessWidget {
  const InstrumentList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: PreferredSize(
        child: MyAppbar(),
        preferredSize: Size(0, 40),
      ),
      body: Center(
        child: InstrumentCard(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:velocity_x/velocity_x.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: _decrement, icon: Icon(FontAwesomeIcons.minus)),
                "$count".text.size(50).make().px(20),
                IconButton(
                    onPressed: _increment, icon: Icon(FontAwesomeIcons.plus))
              ],
            ),
          )
        ],
      ),
    );
  }

  void _increment() {
    count++;
    setState(() {});
  }

  void _decrement() {
    count--;
    setState(() {});
  }
}

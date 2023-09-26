import 'package:flutter/material.dart';
import 'package:flutter_class/instument/instrument_view.dart';

class InstrumentCard extends StatelessWidget {
  InstrumentCard({super.key});

  final Map<String, dynamic> info = <String, dynamic>{
    "img": "assets/images/gi.webp",
    "title":
        "Acoustic Guitar Linden Wood Ebony Right Hand Orientation -- Acoustic Guitar Linden Wood Ebony Right Hand Orientation -- -- Acoustic Guitar Linden Wood Ebony Right Hand Orientation",
    "price": "1200",
  };

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        width: s.width / 2,
        height: s.width / 2,
        padding: EdgeInsets.all(10),
        child: Stack(
          children: [
            Hero(tag: 'img', child: Image.asset(info['img'])),
            Positioned(
              bottom: 5,
              right: 5,
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => InstrumentView(info: info),
                    ),
                  );
                },
                icon: const Icon(Icons.keyboard_arrow_right),
                splashColor: Colors.black26,
                splashRadius: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}

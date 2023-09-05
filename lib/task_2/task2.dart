import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Task2 extends StatelessWidget {
  const Task2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Icon(FontAwesomeIcons.wandMagicSparkles),
            SizedBox(height: 100),
            Stack(
              alignment: Alignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(110)),
                  child: Container(
                    height: 220,
                    width: 220,
                    color: Colors.blue,
                  ),
                ),
                DottedBorder(
                  borderType: BorderType.RRect,
                  radius: Radius.circular(100),
                  padding: EdgeInsets.all(0),
                  color: Colors.white,
                  strokeWidth: 3,
                  strokeCap: StrokeCap.butt,
                  dashPattern: [2, 5],
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                    child: Container(
                      height: 200,
                      width: 200,
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  const AppCard(
      {super.key,
      required this.storage,
      required this.title,
      required this.imgSrc,
      required this.color});

  final int storage;
  final String title;
  final IconData imgSrc;
  final Color color;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double bozSize = 190;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: bozSize,
            width: bozSize,
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(15)),
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    iconBox(icon: Icons.delete),
                    iconBox(icon: Icons.timer),
                    iconBox(icon: Icons.timelapse),
                  ],
                ),
                infoBox(context),
              ],
            ),
          ),
          Positioned(
            top: -30,
            left: 30,
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 10,
                        offset: Offset(0, 5))
                  ]),
              child: Icon(
                imgSrc,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// widget functions start

  Widget iconBox({IconData? icon}) {
    return Container(
      alignment: Alignment.center,
      height: 40,
      width: 40,
      decoration: BoxDecoration(
          color: Colors.black38, borderRadius: BorderRadius.circular(5)),
      child: Icon(
        icon ?? Icons.invert_colors,
        color: Colors.white,
      ),
    );
  }

  Widget infoBox(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 5),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${storage}GB',
                    style: const TextStyle(fontSize: 12, color: Colors.white),
                  ),
                  const Text(
                    '100GB',
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Container(
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.white38,
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  Container(
                    height: 5,
                    width: (150 / 100) * storage,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  /// widget functions end
}

import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:velocity_x/velocity_x.dart';

class InstrumentView extends StatelessWidget {
  const InstrumentView({super.key, required this.info});

  final Map<String, dynamic> info;

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SizedBox(
        width: s.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: s.width / 1.2,
              width: s.width / 1.2,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Hero(
                tag: 'img',
                child: Image.asset(info['img']),
              ),
            ),
            SizedBox(
              width: s.width / 1.5,
              child: Text(
                "${info['title']}",
                style: TextStyle(),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            ReadMoreText(
              'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
              trimLines: 2,
              colorClickableText: Colors.pink,
              trimMode: TrimMode.Line,
              trimCollapsedText: 'Show more',
              trimExpandedText: 'Show less',
              moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                children: [
                  "₹${info['price']}".text.size(20).make(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

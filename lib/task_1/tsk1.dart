import 'package:flutter/material.dart';
import 'package:flutter_class/task_1/app_card.dart';
import 'package:flutter_class/task_1/data.dart';
import 'package:flutter_class/task_1/shape_paint.dart';

class Tsk1 extends StatelessWidget {
  Tsk1({super.key});

  final Color secondColor = Colors.grey;
  final Color mainColor = Colors.grey[800] ?? Colors.black;

  Widget buildTitle() {
    TextStyle textStyle = TextStyle(color: secondColor, fontSize: 30);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Hello,",
          style: textStyle,
        ),
        const SizedBox(height: 5),
        Text(
          "Mr.Akkash",
          style: TextStyle(
              color: mainColor,
              fontWeight: FontWeight.w500,
              fontSize: textStyle.fontSize),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: secondColor,
        ),
        actions: [
          Icon(Icons.notifications, color: secondColor),
          const SizedBox(width: 15)
        ],
      ),
      body: CustomPaint(
        size: Size(double.infinity, double.infinity),
        painter: MyPainter(),
      ),
      // body: ListView(
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.symmetric(horizontal: 20),
      //       child: buildTitle(),
      //     ),
      //     SizedBox(height: 40),
      //     SingleChildScrollView(
      //         scrollDirection: Axis.horizontal,
      //         child: Padding(
      //           padding: const EdgeInsets.only(top: 35),
      //           child: Row(
      //             children: List.generate(appCardData.length, (index) {
      //               AppCard card = appCardData[index];
      //               print('index ===== ${index}');
      //               return card;
      //             }),
      //           ),
      //         )),
      //     SizedBox(height: 20),
      //     Column(
      //       children: [
      //         Container(
      //           height: 200,
      //           width: 200,
      //           decoration: BoxDecoration(
      //             borderRadius: BorderRadius.circular(20),
      //             color: Colors.lightGreen,
      //             image: const DecorationImage(
      //                 image: AssetImage('assets/images/my.jpg'),
      //                 fit: BoxFit.cover),
      //           ),
      //         ),
      //         SizedBox(height: 20),
      //         ClipRRect(
      //           borderRadius: BorderRadius.circular(100),
      //           child: Container(
      //             height: 200,
      //             width: 200,
      //             color: Colors.lightGreen,
      //             child: const Image(
      //               image: AssetImage('assets/images/girl.jpg'),
      //             ),
      //           ),
      //         ),
      //         SizedBox(height: 20),
      //         const CircleAvatar(
      //           radius: 20,
      //           backgroundImage: AssetImage('assets/images/girl.jpg'),
      //         ),
      //         SizedBox(height: 20),
      //
      //       ],
      //     )
      //   ],
      // ),
    );
  }
}

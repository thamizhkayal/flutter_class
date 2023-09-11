import 'package:flutter/material.dart';

class Task3 extends StatefulWidget {
  const Task3({super.key});

  @override
  State<Task3> createState() => _Task3State();
}

class _Task3State extends State<Task3> {
  bool isLiked = false;

  void likeAction() {
    isLiked = !isLiked;
    setState(() {});
  }

  Color mainColor = Colors.grey[700] ?? Colors.grey;
  Color secColor = Colors.black38;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: size.width,
            width: size.width,
            decoration: BoxDecoration(
                color: Colors.lightBlue[50],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: Column(
              children: [
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back,
                          size: 25,
                          color: mainColor,
                        )),
                    IconButton(
                        onPressed: likeAction,
                        icon: Icon(
                          Icons.favorite,
                          size: 25,
                          color: isLiked ? Colors.redAccent : mainColor,
                        ))
                  ],
                ),
                Expanded(
                    child: Row(
                  children: [
                    Expanded(
                      flex: 10,
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 25),
                        child: Image.asset('assets/images/ice.png'),
                      ),
                    ),
                    Container(
                      height: size.width - 100,
                      width: 2,
                      color: secColor.withOpacity(0.1),
                    ),
                    Expanded(
                      flex: 7,
                      child: Container(
                        padding: EdgeInsets.only(right: 20, bottom: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Column(
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 5),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 5),
                                  decoration: BoxDecoration(
                                      color: secColor,
                                      borderRadius: BorderRadius.circular(3)),
                                  child: Icon(
                                    Icons.shopping_cart,
                                    color: Colors.white60,
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 5),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 5),
                                  decoration: BoxDecoration(
                                      color: secColor,
                                      borderRadius: BorderRadius.circular(3)),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white60,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "\$ 3.99",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: mainColor),
                                ),
                                FittedBox(
                                  child: Container(
                                    child: Row(
                                      children: List.generate(
                                          5,
                                          (index) => Icon(Icons.star,
                                              size: 18,
                                              color: index < 3
                                                  ? mainColor
                                                  : secColor)),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

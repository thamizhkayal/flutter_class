import 'package:flutter/material.dart';
import 'package:flutter_class/THAMZHHD/screen/home/user_datas.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';
import 'user_model.dart';

List<UserModel> user = [];

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  UserModel? userModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Center(
            child: Badge(
              offset: Offset(10, -10),
              label: Text('1'),
              smallSize: 30,
              child: Icon(Icons.shopping_cart),
            ),
          ),
          SizedBox(width: 20),
        ],
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
              onPressed: () {
                setState(() {
                  userModel = UserModel.fromJson(
                      {"name": "C++", "age": 20, "email": "c20@gmail.com"});
                });
              },
              child: Text("SetModel")),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              color: Colors.grey[300],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                      'name : ${userModel?.username}\nage : ${userModel?.age} '),
                  TextButton(onPressed: () {}, child: Text('add to cart'))
                ],
              ),
            ),
          ),
          Text(
              'name : ${UserData.userMap['username']}\nage : ${UserData.userMap['age']} '),
        ],
      )),
    );
  }

  Container buildValuesWithLabel({value, title, Color color = Colors.grey}) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Row(
        children: [
          Column(
            children: [
              Text('$title').text.size(15.sp).color(color).make(),
              SizedBox(height: 3.h),
              Text('₹$value')
                  .text
                  .size(15.sp)
                  .color(const Color(0xff646464))
                  .make(),
            ],
          ),
        ],
      ),
    );
  }
}

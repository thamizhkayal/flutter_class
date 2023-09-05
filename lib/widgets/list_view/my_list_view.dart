import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  MyListView({super.key});

  List<Widget> makeList(int? count) {
    List<Widget> lis = [];
    for (int i = 0; i < count!; i++) {
      Container con = Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        child: ListTile(
          title: Text('item ${i + 1}'),
          tileColor: Colors.grey[200],
          focusColor: Colors.yellow,
          splashColor: Colors.green,
          leading: Icon(Icons.verified_user),
          trailing: Icon(Icons.close),
          onTap: () {},
        ),
      );
      lis.add(con);
    }
    return lis;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: makeList(10),
      ),
    );
  }
}

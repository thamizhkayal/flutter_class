import 'package:flutter/material.dart';
import 'package:flutter_class/task3/task3.dart';
import 'package:flutter_class/task_2/task2.dart';

import 'MyButtons/my_buttons.dart';
import 'counter_app/counter_app.dart';
import 'task_1/tsk1.dart';
import 'widgets/list_view/my_list_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyButtons(),
      // home: Tsk1(),
    );
  }
}

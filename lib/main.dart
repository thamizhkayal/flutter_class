import 'package:flutter/material.dart';
import 'package:flutter_class/task_2/task2.dart';

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
      home: Task2(),
      // home: Tsk1(),
    );
  }
}

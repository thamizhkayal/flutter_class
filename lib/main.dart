import 'package:flutter/material.dart';
import 'package:flutter_class/task3/task3.dart';
import 'package:flutter_class/task_2/task2.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'MyButtons/my_buttons.dart';
import 'THAMZHHD/screen/home/home.dart';
import 'counter_app/counter_app.dart';
import 'instument/instrument_list.dart';
import 'provider/product_provider.dart';
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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ProductProvider()),
      ],
      child: ScreenUtilInit(
          designSize: const Size(375, 812),
          minTextAdapt: true,
          builder: (_, child) {
            return const MaterialApp(
              debugShowCheckedModeBanner: false,
              home: Home(),
              // home: Tsk1(),
            );
          }),
    );
  }
}

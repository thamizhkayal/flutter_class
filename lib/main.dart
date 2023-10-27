import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:flutter_class/task3/task3.dart';
import 'package:flutter_class/task_2/task2.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:provider/provider.dart';
import 'MyButtons/my_buttons.dart';
import 'THAMZHHD/screen/home/home.dart';
import 'bottom_sheet_practice/MyBottomSheetPractice.dart';
import 'counter_app/counter_app.dart';
import 'firebase_options.dart';
import 'input.dart';
import 'instument/instrument_list.dart';
import 'provider/data_provider.dart';
import 'provider/product_provider.dart';
import 'screen/pages/add_data_page.dart';
import 'task_1/tsk1.dart';
import 'thamizh_practice/grouped_list_practice.dart';
import 'widgets/list_view/my_list_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await GetStorage.init();
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
        ChangeNotifierProvider(create: (context) => DataProvider()),
      ],
      child: ScreenUtilInit(
          designSize: const Size(375, 812),
          minTextAdapt: true,
          builder: (_, child) {
            return GetMaterialApp(
              debugShowCheckedModeBanner: false,
              home: AddDataPage(),
              // home: Tsk1(),
            );
          }),
    );
  }
}

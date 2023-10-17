import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class MyBottomSheetPractice extends StatelessWidget {
  MyBottomSheetPractice({super.key});

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  void openBottomSheet(BuildContext context) {
    scaffoldKey.currentState?.showBottomSheet(
      (context) => Container(
        height: 0.8.sh,
        padding: EdgeInsets.all(10),
        color: Colors.red,
        child: PageView(
          children: [
            MyPageView(),
            MyPageView(),
            MyPageView(),
          ],
        ),
      ),
    );
  }

  final GetStorage storage = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Container(
        width: 1.sw,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                openBottomSheet(context);
              },
              icon: Icon(Icons.add),
            ),
            TextButton(
              onPressed: () async {
                List<dynamic> data = storage.read('myKey');
                print('$data');
              },
              child: Text('GetData'),
            ),
          ],
        ),
      ),
    );
  }
}

class MyPageView extends StatelessWidget {
  const MyPageView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final GetStorage storage = GetStorage();
    final TextEditingController textEditingController = TextEditingController();
    return Container(
      width: 1.sw,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(controller: textEditingController),
          TextButton(
            onPressed: () async {
              List datas = storage.read('myKey') ?? [];
              print(datas);
              String data = textEditingController.text;
              datas.add(data);
              await storage.write("myKey", datas);
              Get.back();
            },
            child: Text('Add'),
          ),
        ],
      ),
    );
  }
}

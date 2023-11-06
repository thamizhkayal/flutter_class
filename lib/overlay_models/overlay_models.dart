import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_storage/get_storage.dart';

class OverlayModels extends StatefulWidget {
  const OverlayModels({super.key});

  @override
  State<OverlayModels> createState() => _OverlayModelsState();
}

class _OverlayModelsState extends State<OverlayModels> {
  DateTime pickedDate = DateTime.now();
  String dt = "Now";

  myAlertModel(BuildContext context) {
    showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            content: Text("This Is My content"),
            title: Text("this is my title"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Cancel"),
              ),
              TextButton(
                onPressed: () {
                  print("Welcome☺");
                  Navigator.pop(context);
                },
                child: Text("Accept"),
              ),
              TextButton(
                onPressed: () {
                  print("ok cool ☻");
                },
                child: Text("I'm Not sure"),
              )
            ],
            elevation: 0,
            backgroundColor: Colors.grey[100],
            // contentPadding: EdgeInsets.zero,
            // titlePadding: EdgeInsets.zero,
            // actionsPadding: EdgeInsets.zero,
          );
        });
  }

  myBottomSheet(BuildContext context) {
    showBottomSheet(
        context: context,
        builder: (context) {
          return Scaffold(
            body: Container(),
          );
        });
  }

  myDatePicker(BuildContext context) async {
    DateTime? date = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1998),
        lastDate: DateTime(2025),
        confirmText: "Pick");

    print(date);
    print(date.runtimeType);
    pickedDate = date ?? DateTime.now();
    dt = "${pickedDate.day}-${pickedDate.month}-${pickedDate.year}";
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SizedBox(
        width: 1.sw,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(pickedDate.toString()),
            Text(dt.toString()),
            TextButton(
                onPressed: () {
                  myAlertModel(context);
                },
                child: Text('Alert Model')),
            TextButton(onPressed: () {}, child: Text('Bottom Sheet')),
            TextButton(
                onPressed: () {
                  myDatePicker(context);
                },
                child: Text('Date picker')),
            TextButton(
                onPressed: () {
                  // showAboutDialog(context: context);
                  showTimePicker(
                      context: context,
                      initialTime: TimeOfDay(hour: 1, minute: 30));
                },
                child: Text('Button 4')),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MyButtons extends StatefulWidget {
  const MyButtons({super.key});

  @override
  State<MyButtons> createState() => _MyButtonsState();
}

class _MyButtonsState extends State<MyButtons> {
  String info = "Info";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(info),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: myTextButton,
                child: const Text('TextButton'),
              ),
              IconButton(
                onPressed: myIconButton,
                icon: Icon(Icons.access_alarm),
                splashRadius: 20,
              ),
              ElevatedButton(
                  onPressed: myElevatedButton,
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all<Color>(Colors.red),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                          side: BorderSide(color: Colors.red, width: 1)),
                    ),
                  ),
                  child: const FittedBox(
                    child: Row(
                      children: [Icon(Icons.web), Text('Share')],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  void myTextButton() {
    print('My Text Button');
    info = "Text Button";
    setState(() {});
  }

  void myIconButton() {
    print('My Icon Button');
  }

  void myElevatedButton() {
    print('My Elevated Button');
  }
}

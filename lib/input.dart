import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class MyInputs extends StatefulWidget {
  MyInputs({super.key});

  @override
  State<MyInputs> createState() => _MyInputsState();
}

class _MyInputsState extends State<MyInputs> {
  final TextEditingController nameController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final fs = FirebaseFirestore.instance;
  Map<String, dynamic> userData = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(hintText: 'User Name'),
            ),
            TextField(
              controller: emailController,
              decoration: InputDecoration(hintText: 'Email'),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 70, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      fs.collection("User").doc("8015122373").set({
                        "name": nameController.text,
                        "age": 25,
                        "email": emailController.text
                      });
                    },
                    child: Text("Add Data"),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  TextButton(
                    onPressed: () async {
                      final res =
                          await fs.collection("User").doc("8015122373").get();
                      print(res.id);
                      print(res.exists);
                      print(res.data());
                      if (res.exists) {
                        userData = res.data() ?? {};
                        setState(() {});
                      }
                    },
                    child: Text("Get Data"),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ListTile(
                title: Text("${userData['name']}"), subtitle: Text("name")),
            ListTile(
                title: Text("${userData['email']}"), subtitle: Text("email")),
            ListTile(title: Text("${userData['age']}"), subtitle: Text("age")),
          ],
        ),
      )),
    );
  }
}

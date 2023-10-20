import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class MyInputs extends StatelessWidget {
  MyInputs({super.key});
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final fs = FirebaseFirestore.instance;

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
              controller: passController,
              decoration: InputDecoration(hintText: 'Password'),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 70, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      Map<String, dynamic> userData = {
                        "username": nameController.text,
                        "password": passController.text
                      };
                      print(userData);

                      // fs.collection("users").add(userData);
                      fs
                          .collection('users')
                          .doc(nameController.text)
                          .set(userData);
                    },
                    child: Text("Add Data"),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  TextButton(
                    onPressed: () async {
                      final res = await fs
                          .collection('users')
                          .doc('W5SlzGa9LEad0gN6JELY')
                          .get();
                      print(res.id);
                      print(res.data());
                    },
                    child: Text("Get Data"),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ListTile()
          ],
        ),
      )),
    );
  }
}

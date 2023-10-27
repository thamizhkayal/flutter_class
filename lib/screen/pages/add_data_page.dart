import 'package:flutter/material.dart';
import 'package:flutter_class/provider/data_provider.dart';
import 'package:provider/provider.dart';

class AddDataPage extends StatelessWidget {
  AddDataPage({super.key});

  final TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<DataProvider>(context);
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                color: Colors.blue[200],
                                borderRadius: BorderRadius.circular(5)),
                            child: TextField(
                              controller: nameController,
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            ),
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              Map<String, dynamic> data = {
                                "name": nameController.text.trim()
                              };
                              if (nameController.text.trim().isNotEmpty) {
                                dataProvider.addData(
                                  data: data,
                                  collection: "Names",
                                );
                                nameController.clear();
                              } else {
                                print('data is empty');
                              }
                            },
                            child: Text('Add'))
                      ],
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        dataProvider.getAllData(collection: "Names");
                      },
                      child: Text('Get Data'))
                ],
              ),
            ),
            Expanded(
              flex: 6,
              child: SingleChildScrollView(
                child: Column(
                    children: dataProvider.names
                        .map((e) => ListTile(
                              title: Text(e),
                              onTap: () {},
                            ))
                        .toList()),
              ),
            )
          ],
        ),
      ),
    );
  }
}

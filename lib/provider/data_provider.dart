import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DataProvider extends ChangeNotifier {
  final fs = FirebaseFirestore.instance;
  List<String> names = [];

  addData(
      {String? collection,
      String? docId,
      required Map<String, dynamic> data}) async {
    final col = fs.collection(collection ?? "DefaultCollection");
    if (docId != null) {
      await col.doc(docId).set(data);
    } else {
      await col.add(data);
    }
    getAllData(collection: collection ?? "DefaultCollection");
  }

  getAllData({String? collection}) async {
    final allData =
        await fs.collection(collection ?? "DefaultCollection").get();
    List<String> allNames = [];
    for (var i in allData.docs) {
      allNames.add(i.data()['name']);
    }
    names = allNames;
    notifyListeners();
  }
}

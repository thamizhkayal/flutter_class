import 'package:flutter/material.dart';

class ProductProvider extends ChangeNotifier {
  int cartCount = 0;

  addToCart() {
    cartCount += 1;
    notifyListeners();
  }
}

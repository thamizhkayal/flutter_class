import 'package:flutter/material.dart';
import 'package:flutter_class/provider/product_provider.dart';
import 'package:provider/provider.dart';

class MyAppbar extends StatelessWidget {
  const MyAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    final pp = Provider.of<ProductProvider>(context);
    return AppBar(
      leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.chevron_left)),
      actions: [Icon(Icons.shopping_cart), Text(pp.cartCount.toString())],
    );
  }
}

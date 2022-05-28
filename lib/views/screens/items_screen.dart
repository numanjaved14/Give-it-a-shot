import 'package:flutter/material.dart';
import 'package:give_it_a_shot/views/widgets/products_item.dart';

class ItemsScreen extends StatelessWidget {
  const ItemsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) => ProductsItem(),
        ),
      ),
    );
  }
}

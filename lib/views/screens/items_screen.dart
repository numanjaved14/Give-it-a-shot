import 'package:flutter/material.dart';
import 'package:give_it_a_shot/views/widgets/products_item.dart';

class ItemsScreen extends StatelessWidget {
  const ItemsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: const InputDecoration(
                    hintText: 'Search by product Name',
                    suffixIcon: Icon(Icons.search),
                  ),
                  // controller: _passwordcontroller,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.69,
                child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) => ProductsItem(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

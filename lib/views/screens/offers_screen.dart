import 'package:flutter/material.dart';
import 'package:give_it_a_shot/views/widgets/offer_item.dart';

class OffersScreen extends StatelessWidget {
  const OffersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) => OffersItem(),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../screens/product_details_screen.dart';

class OffersItem extends StatefulWidget {
  const OffersItem({Key? key}) : super(key: key);

  @override
  State<OffersItem> createState() => _OffersItemState();
}

class _OffersItemState extends State<OffersItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: GestureDetector(
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ProductDetailsScreen(),
          ),
        ),
        child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: SizedBox(
              height: 70,
              width: 70,
              child: Image.asset(
                'assets/images/dummy.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: Row(
            children: [
              Text(
                'Skinny-B Shot',
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Text(
                '\$35',
                style:
                    TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Fat Burner & Energy Booster'),
              Row(
                children: [
                  Text('Add to Cart   '),
                  Icon(Icons.shopping_cart),
                  Spacer(),
                  Icon(Icons.favorite),
                ],
              ),
              Text(
                '50% Discount Offer',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

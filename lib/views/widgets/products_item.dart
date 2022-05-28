import 'package:flutter/material.dart';

import '../screens/product_details_screen.dart';

class ProductsItem extends StatefulWidget {
  const ProductsItem({Key? key}) : super(key: key);

  @override
  State<ProductsItem> createState() => _ProductsItemState();
}

class _ProductsItemState extends State<ProductsItem> {
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
                  // ElevatedButton.icon(
                  //   onPressed: () {},
                  //   icon: Icon(Icons.shopping_cart),
                  //   label: Text('Add to Cart'),
                  // ),
                  Text('Add to Cart   '),
                  Icon(Icons.shopping_cart),
                  Spacer(),
                  Icon(Icons.favorite),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              elevation: 0.0,
              backgroundColor: Colors.white,
              expandedHeight: 250.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text(
                    "Product Title",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                    ),
                  ),
                  background: Image.asset(
                    "assets/images/dummy.jpg",
                    fit: BoxFit.cover,
                  )),
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Price',
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(color: Colors.orange),
                ),
                Text(
                  '\$250',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Description',
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(color: Colors.orange),
                ),
                Text(
                  'Etiam senectus integer pharetra tempor lacinia ut. Magna dolor sed ut amet, adipiscing nunc. Nec morbi dolor, adipiscing lacus, tortor magna gravida sem. Lacus, praesent nibh mattis quam id ultrices. Scelerisque amet elementum pulvinar cum sit. Fusce et justo quam purus viverra vitae. Est, felis nunc nunc, placerat ultrices et porttitor. Lobortis feugiat neque luctus odio pulvinar dui sit tempus. Vulputate ac et nisl, malesuada aliquam tellus vestibulum congue quam. Lobortis sapien, et amet, id interdum bibendum aliquet faucibus.Orci, non sit tempus pellentesque nunc. Ac neque, sagittis cursus nec eu. At interdum condimentum purus sem vitae elementum quis neque. Tincidunt.',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    label: Text('Add to cart'),
                    icon: Icon(Icons.shopping_cart),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

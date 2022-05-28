import 'package:flutter/material.dart';
import 'package:give_it_a_shot/views/screens/product_details_screen.dart';

class HomeGridItem extends StatelessWidget {
  const HomeGridItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GestureDetector(
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ProductDetailsScreen(),
          ),
        ),
        child: GridTile(
          // child: GestureDetector(
          //   onTap: () {
          //     Navigator.of(context).pus)hNamed(
          //       ProductDetailScreen.routeName,
          //     );
          //   },
          child: Stack(
            children: [
              Container(
                height: 300,
                child: Image.asset(
                  'assets/images/dummy.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: CircleAvatar(
                  backgroundColor: Colors.grey.shade800.withOpacity(0.3),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.shopping_cart,
                      color: Colors.grey.shade800,
                    ),
                  ),
                ),
              ),
            ],
          ),
          footer: GridTileBar(
            backgroundColor: Colors.grey.shade800.withOpacity(0.7),
            // leading: IconButton(
            //   icon: Icon(Icons.favorite),
            //   color: Theme.of(context).accentColor,
            //   onPressed: () {},
            // ),
            title: Text(
              'Creative Products Packaging',
              textAlign: TextAlign.center,
            ),
            // trailing: IconButton(
            //   icon: Icon(
            //     Icons.shopping_cart,
            //   ),
            //   onPressed: () {},
            //   color: Theme.of(context).accentColor,
            // ),
          ),
        ),
      ),
    );

    // return GridTile(
    //   // header: Image.asset(
    //   //   'assets/images/dummy.jpg',
    //   //   fit: BoxFit.fill,
    //   // ),
    //   // footer: Text('Creative Products Packaging'),
    //   child: Card(
    //     child: ClipRRect(
    //       borderRadius: BorderRadius.circular(10),
    //       child: Stack(
    //         children: [
    //           Image.asset(
    //             'assets/images/dummy.jpg',
    //             fit: BoxFit.cover,
    //           ),
    //           Positioned(
    //             top: 0,
    //             right: 0,
    //             child: IconButton(
    //               onPressed: () {},
    //               icon: Icon(Icons.shopping_cart),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}

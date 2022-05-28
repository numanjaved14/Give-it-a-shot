import 'package:flutter/material.dart';
import 'package:give_it_a_shot/views/screens/cart/cart_screen.dart';
import 'package:give_it_a_shot/views/screens/home_screen.dart';
import 'package:give_it_a_shot/views/screens/offers_screen.dart';
import 'package:give_it_a_shot/views/screens/tab_bar.dart';

const TextStyle _textStyle = TextStyle(
  fontSize: 40,
  fontWeight: FontWeight.bold,
  letterSpacing: 2,
  fontStyle: FontStyle.italic,
);

class MaterialYou extends StatefulWidget {
  const MaterialYou({Key? key}) : super(key: key);

  @override
  State<MaterialYou> createState() => _MaterialYouState();
}

class _MaterialYouState extends State<MaterialYou> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    HomeScreen(),
    OffersScreen(),
    TabBarScreen(),
    CartScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages[_currentIndex],
      ),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.blue.withOpacity(0.5),
          backgroundColor: Colors.grey.shade200,
        ),
        child: NavigationBar(
          selectedIndex: _currentIndex,
          animationDuration: const Duration(seconds: 1),
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          onDestinationSelected: (int newIndex) {
            setState(() {
              _currentIndex = newIndex;
            });
          },
          destinations: const [
            NavigationDestination(
              selectedIcon: Icon(Icons.home),
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.calendar_today),
              icon: Icon(Icons.calendar_today_outlined),
              label: 'Offers',
            ),
            NavigationDestination(
              selectedIcon: ImageIcon(
                AssetImage('assets/images/products.png'),
              ),
              icon: ImageIcon(
                AssetImage('assets/images/products.png'),
              ),
              label: 'Products',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.shopping_cart),
              icon: Icon(Icons.shopping_cart_outlined),
              label: 'Cart',
            ),
          ],
        ),
      ),
    );
  }
}

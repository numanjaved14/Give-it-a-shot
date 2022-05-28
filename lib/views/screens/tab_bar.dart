import 'package:flutter/material.dart';
import 'package:give_it_a_shot/views/screens/items_screen.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({Key? key}) : super(key: key);

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: new Scaffold(
        appBar: new PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: new Container(
            color: Colors.white,
            child: new SafeArea(
              child: Column(
                children: <Widget>[
                  new Expanded(child: new Container()),
                  new TabBar(
                    labelColor: Theme.of(context).primaryColor,
                    unselectedLabelColor: Colors.grey.shade800,
                    indicatorSize: TabBarIndicatorSize.label,
                    tabs: [
                      new Text(
                        'Items',
                        style: TextStyle(fontSize: 20),
                      ),
                      new Text(
                        'Featured',
                        style: TextStyle(fontSize: 20),
                      ),
                      new Text(
                        'Favourite',
                        style: TextStyle(fontSize: 20),
                      ),
                      // new Text(
                      //   'Previous',
                      //   style: TextStyle(color: Colors.black),
                      // ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        body: new TabBarView(
          children: <Widget>[
            new ItemsScreen(),
            new ItemsScreen(),
            new ItemsScreen(),
            // new Column(
            //   children: <Widget>[new Text("4 Page")],
            // ),
          ],
        ),
      ),
    );
  }
}

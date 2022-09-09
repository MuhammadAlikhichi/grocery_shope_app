import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_shope_app/shop_page.dart';

import 'account.dart';
import 'cart.dart';
import 'explore.dart';
import 'favorite.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedPage = 0;
  final _pageOptions = [
    const Shop(),
    const Explore(),
    const Cart(),
    const Favorite(),
    const Account(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade200,
        // appBar: AppBar(
        //   backgroundColor: Colors.grey.shade300,
        //   title: Center(
        //     child: Text(
        //       "Grocery Shop App",
        //       style: TextStyle(
        //         color: Colors.black,
        //       ),
        //     ),
        //   ),
        // ),
        body: _pageOptions[selectedPage],
        bottomNavigationBar: ConvexAppBar(
          elevation: 1,
          backgroundColor: Colors.white,
          color: Colors.black,
          activeColor: Colors.black,
          items: const [
            TabItem(icon: Icons.shop, title: 'Shop'),
            TabItem(icon: Icons.explore, title: 'Explore'),
            TabItem(icon: CupertinoIcons.cart, title: 'Cart'),
            TabItem(icon: Icons.favorite, title: 'Favorite'),
            TabItem(icon: Icons.account_circle_outlined, title: 'Account'),
          ],
          initialActiveIndex: 0, //optional, default as 0
          onTap: (int i) {
            setState(() {
              selectedPage = i;
            });
          },
        ),
      ),
    );
  }
}

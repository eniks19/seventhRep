import 'package:flutter/material.dart';
import 'package:shoe/screens/cart.dart';
import 'package:shoe/screens/drawer.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:shoe/screens/home.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    MyShop(),
    MyCart(),
  ];
  int currentindex = 0;

  void onTap(int index) {
    setState(() {
      currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        elevation: 0,
      ),
      drawer: MyDrawer(),
      body: pages[currentindex],
      bottomNavigationBar: Container(
        color: Colors.grey[300],
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16, left: 105, right: 105),
          child: GNav(
              onTabChange: onTap,
              color: Colors.white60,
              activeColor: Colors.grey.shade600,
              tabBackgroundColor: Colors.white38,
              gap: 8,
              tabBorderRadius: 15,
              tabActiveBorder: Border.all(color: Colors.white, width: 1),
              tabBorder: Border.all(color: Colors.grey.shade600, width: 1),
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'Shop',
                ),
                GButton(
                  icon: Icons.shopping_bag_rounded,
                  text: 'Cart',
                ),
              ]),
        ),
      ),
    );
  }
}

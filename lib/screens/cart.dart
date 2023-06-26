import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoe/component/model.dart';
import 'package:shoe/home_parts/cart_item.dart';
import 'package:shoe/provider/provider.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'My Cart',
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 23,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              child: Container(
                // height: 100,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: value.getcartList().length,
                    itemBuilder: (context, index) {
                      Shoe individualShoe = value.getcartList()[index];
                      return CartItem(oshoe: individualShoe);
                    }),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

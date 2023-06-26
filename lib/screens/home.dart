import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoe/component/model.dart';
import 'package:shoe/home_parts/divider.dart';
import 'package:shoe/home_parts/shoetile.dart';
import 'package:shoe/home_parts/text1.dart';
import 'package:shoe/home_parts/text_2.dart';
import 'package:shoe/home_parts/textfield.dart';
import 'package:shoe/provider/provider.dart';

class MyShop extends StatefulWidget {
  const MyShop({super.key});

  @override
  State<MyShop> createState() => _MyShopState();
}

class _MyShopState extends State<MyShop> {
  // List<dynamic> list1 = [
  //   'lib/asset/shoe1.png',
  //   'The forward-thinking design of his\nlatest signature shoe.',
  //   'Air Jordan 1',
  //   '&236',
  // ];

  // List<dynamic> list2 = [
  //   'lib/asset/shoe2.png',
  //   'You have got the hops and the speed\n-lace up in shoes that enhance\nwhat you bring to the court.',
  //   'Dunk Low',
  //   '&220',
  // ];

  // List<dynamic> list3 = [
  //   'lib/asset/shoe3.png',
  //   'A secure midfoot strap is suited for\nfor scoring binges and defensive\nstands, so that you can lock in and\nkeep winning.',
  //   'Air Jordan 1',
  //   '&240',
  // ];

  // List<dynamic> list4 = [
  //   'lib/asset/shoe4.png',
  //   'Bouncy cushioning is paired with\nsoft yet supportive foam for\nresponsiveness and style',
  //   'Air Force 1',
  //   '&190',
  // ];

  // List<List<dynamic>>? parentlist;
  // @override
  // initState() {
  //   parentlist = [list1, list2, list3, list4];

  //   super.initState();
  // }

  void addItem(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).additem(shoe);

    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text('Successfully added!'),
              content: Text('Check your Cart!'),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            MyTextfield(),
            Text1(),
            Text2(),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  height: 430,
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: value.shoeList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: ((context, index) {
                        Shoe myshoe = value.getshoeList()[index];
                        return ShoeTile(
                          shoe: myshoe,
                          onTap: () => addItem(myshoe),
                        );
                      })),
                ),
              ),
            ),
            MyDivider(),
          ],
        ),
      ),
    );
  }
}

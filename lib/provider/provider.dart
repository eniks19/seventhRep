import 'package:flutter/material.dart';
import 'package:shoe/component/model.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeList = [
    Shoe(
        img: 'lib/asset/shoe1.png',
        des: 'The forward-thinking design of his\nlatest signature shoe.',
        name: 'Air Jordan 1',
        price: '236'),
    Shoe(
        img: 'lib/asset/shoe2.png',
        des:
            'You have got the hops and the speed\n-lace up in shoes that enhance\nwhat you bring to the court.',
        name: 'Dunk Low',
        price: '220'),
    Shoe(
        img: 'lib/asset/shoe3.png',
        des:
            'A secure midfoot strap is suited for\nfor scoring binges and defensive\nstands, so that you can lock in and\nkeep winning.',
        name: 'Air Jordan 1',
        price: '240'),
    Shoe(
        img: 'lib/asset/shoe4.png',
        des:
            'Bouncy cushioning is paired with\nsoft yet supportive foam for\nresponsiveness and style',
        name: 'Air Force 1',
        price: '190'),
  ];

  List<Shoe> cartList = [];

  List<Shoe> getshoeList() {
    return shoeList;
  }

  List<Shoe> getcartList() {
    return cartList;
  }

  void additem(Shoe shoe) {
    cartList.add(shoe);
    notifyListeners();
  }

  void removeitem(Shoe shoe) {
    cartList.remove(shoe);
    notifyListeners();
  }
}

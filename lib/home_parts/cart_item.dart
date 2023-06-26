import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoe/component/model.dart';
import 'package:shoe/provider/provider.dart';

class CartItem extends StatefulWidget {
  Shoe oshoe;
  CartItem({super.key, required this.oshoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removeItem() {
    Provider.of<Cart>(context, listen: false).removeitem(widget.oshoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.oshoe.img),
        title: Text(widget.oshoe.name),
        subtitle: Text('\$' + widget.oshoe.price),
        trailing: GestureDetector(
            onTap: () => removeItem(), child: Icon(Icons.delete)),
      ),
    );
  }
}

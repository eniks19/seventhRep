import 'package:flutter/material.dart';
import 'package:shoe/component/model.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;
  ShoeTile({super.key, required this.shoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 200, //doesnt affect it , the up one does
      width: 305,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey.shade600),
          borderRadius: BorderRadius.circular(10)),
      child: Stack(
        children: [
          Positioned(
              bottom: 0,
              right: 0,
              child: GestureDetector(
                onTap: onTap, //they are not the same
                child: Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(9),
                        topLeft: Radius.circular(9)),
                    color: Colors.black87,
                  ),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              )),
          Positioned(
            child: Container(
              padding: EdgeInsets.only(top: 65),
              child: Image.asset(
                shoe.img,
              ),
            ),
          ),
          Positioned(
            top: 280,
            left: 35,
            child: Container(
              child: Text(
                shoe.des,
                // parentlist?[index][1],
                style: TextStyle(
                  color: Colors.grey.shade400,
                ),
              ),
            ),
          ),
          Positioned(
            top: 340,
            left: 35,
            child: Container(
              child: Text(
                shoe.name,
                //  parentlist?[index][2],
                style: TextStyle(
                    color: Colors.grey.shade800,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Positioned(
            top: 365,
            left: 35,
            child: Container(
              child: Text(
                '\$' + shoe.price,
                style: TextStyle(
                  color: Colors.brown.shade200,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

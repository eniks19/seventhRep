import 'package:flutter/material.dart';

class Text2 extends StatefulWidget {
  const Text2({super.key});

  @override
  State<Text2> createState() => _Text2State();
}

class _Text2State extends State<Text2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24, right: 24, top: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            'Hot Picks',
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),
          ),
          Text(
            "See all",
            style: TextStyle(
              color: Colors.brown[200],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Text1 extends StatefulWidget {
  const Text1({super.key});

  @override
  State<Text1> createState() => _Text1State();
}

class _Text1State extends State<Text1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(22),
      child: Text(
        'everyone flies.. some fly longer than others',
        style: TextStyle(color: Colors.grey.shade500),
      ),
    );
  }
}

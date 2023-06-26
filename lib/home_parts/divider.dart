import 'package:flutter/material.dart';

class MyDivider extends StatefulWidget {
  const MyDivider({super.key});

  @override
  State<MyDivider> createState() => _MyDividerState();
}

class _MyDividerState extends State<MyDivider> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
      child: Divider(
        thickness: 1,
        color: Colors.brown.shade200,
      ),
    );
  }
}

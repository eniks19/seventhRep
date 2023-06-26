import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoe/component/main_page.dart';
import 'package:shoe/component/signup.dart';
import 'package:shoe/provider/provider.dart';
import 'package:shoe/screens/cart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => Cart())],
      child: MaterialApp(
        title: 'Flutter Demo',
        home: MainPage(),
      ),
    );
  }
}

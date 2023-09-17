import 'package:flutter/material.dart';
import 'package:store_app/screens/home_screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Electrical Store",
      home: HomeScreen(),
    );
  }
}

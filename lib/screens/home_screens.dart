import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/widgets/home/home_body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: HomeAppPar(),
      body: HomeBody(),
    );
  }

  AppBar HomeAppPar() {
    return AppBar(
      title: Text(
        'welcome to my store',
        style: TextStyle(fontSize: 25),
      ),
      backgroundColor: kPrimaryColor,
      elevation: 0,
      actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
    );
  }
}

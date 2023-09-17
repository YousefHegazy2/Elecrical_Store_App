import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/models/products.dart';
import 'package:store_app/screens/details_screen.dart';
import 'package:store_app/widgets/home/product_card.dart';

class HomeBody extends StatelessWidget {
  HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        bottom: false,
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 80),
                  decoration: BoxDecoration(
                      color: kBackgroundColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                ),
                ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) => ProductCard(
                    itemindex: index,
                    product: products[index],
                    press: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return DetailsScreen(
                          product: products[index],
                        );
                      }));
                    },
                  ),
                )
              ],
            ))
          ],
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/models/products.dart';
import 'package:store_app/widgets/details/details_body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({super.key, required this.product});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: Details_AppBar(),
      body: DetailsBody(product: product),
    );
  }

  AppBar Details_AppBar() {
    return AppBar(
      backgroundColor: kBackgroundColor,
      foregroundColor: kBlueColor,
      elevation: 0,
    );
  }
}

import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  final String image;

  const ProductImage({super.key, required this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 350,
      height: 400,
      child: Stack(children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 150,
        ),
        Image.asset(
          image,
          fit: BoxFit.cover,
        ),
      ]),
    );
  }
}

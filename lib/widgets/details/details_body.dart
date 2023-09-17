import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/models/products.dart';
import 'package:store_app/widgets/details/color_dot.dart';
import 'package:store_app/widgets/details/product_image.dart';

class DetailsBody extends StatelessWidget {
  final Product product;

  const DetailsBody({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 550,
          width: double.infinity,
          decoration: BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50)),
          ),
          child: Column(
            children: [
              ProductImage(image: (product.image)),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ColorDot(fillcolr: Colors.red),
                    ColorDot(fillcolr: Colors.blue),
                    ColorDot(fillcolr: Colors.grey),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 120, top: 20),
                child: Text(
                  product.title,
                  style: TextStyle(
                      fontSize: 35,
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 160),
                child: Text(
                  "price : ${product.price}\$",
                  style: TextStyle(
                      fontSize: 35,
                      color: kSecondaryColor,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            child: Text(
              product.description,
              style: TextStyle(fontSize: 25, color: kBackgroundColor),
            ),
          ),
        )
      ],
    );
  }
}

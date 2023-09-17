import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/models/products.dart';

class ProductCard extends StatelessWidget {
  final int itemindex;
  final Product product;
  final Function () press;

  const ProductCard(
      {super.key,
      required this.itemindex,
      required this.product,
      required this.press});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      alignment: Alignment.bottomCenter,
      height: 200,
      child: InkWell(
        onTap: press,
        child: Stack(
          children: [
            Container(
              height: 175,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        blurRadius: 20,
                        offset: Offset(0, 15))
                  ]),
            ),
            // for the image
            Positioned(
                top: 0,
                bottom: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  width: 210,
                  height: 160,
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.cover,
                  ),
                )),
            Positioned(
                top: 20,
                right: 0,
                child: SizedBox(
                  height: 140,
                  width: 200,
                  child: Column(
                    children: [
                      // for the title (the name of the product)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 1),
                        child: Text(
                          product.title,
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ),
                      // for the subtitles
                      Padding(
                        padding: const EdgeInsets.only(top: 5, bottom: 10),
                        child: Text(
                          product.subtitle,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400),
                        ),
                      ),
                      // for the price feild
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                        margin: EdgeInsets.only(top: 40),
                        decoration: BoxDecoration(
                            color: kSecondaryColor,
                            borderRadius: BorderRadius.circular(15)),
                        child: Text("price : ${product.price}\$",
                            style: TextStyle(fontSize: 20)),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

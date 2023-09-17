import 'package:flutter/material.dart';

class ColorDot extends StatelessWidget {
  const ColorDot({
    super.key,
    required this.fillcolr,
  });
  final Color fillcolr;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.all(2),
      height: 20,
      width: 20,
      child: Container(
        decoration: BoxDecoration(shape: BoxShape.circle, color: fillcolr),
      ),
    );
  }
}

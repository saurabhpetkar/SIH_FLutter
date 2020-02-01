import 'package:flutter/material.dart';

class Rectangle extends StatelessWidget {
  final double width;
  final double height;

  final Color color;

  Rectangle(this.width, this.height, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
//      margin: EdgeInsets.all(radius),
      color: color,
    );
  }
}

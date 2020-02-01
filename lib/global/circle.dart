import 'package:flutter/material.dart';

class Circle extends StatelessWidget {
  final double radius;
  final Color color;

  Circle(this.radius, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2*radius,
      width: 2*radius,
//      margin: EdgeInsets.all(radius),
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}

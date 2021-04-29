import 'package:flutter/material.dart';

class BaseGraphBar extends StatelessWidget {
  final Color color;
  final double height;

  BaseGraphBar({this.color, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
    );
  }
}

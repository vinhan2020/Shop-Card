
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../constain.dart';

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelect;
  const ColorDot({
    Key? key,
    required this.color,
    required this.isSelect,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(top: kDefaultPadding / 4, right: kDefaultPadding / 2),
      padding: EdgeInsets.all(2),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelect ? color : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../../constain.dart';
import '../../../model/Product.dart';
import 'color_dot.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Colors"),
              Row(
                children: <Widget>[
                  ColorDot(
                    color: Color(0xFF356C95),
                    isSelect: true,
                  ),
                  ColorDot(
                    color: Color(0xFFF8C078),
                    isSelect: false,
                  ),
                  ColorDot(
                    color: Color(0xFFA2989B),
                    isSelect: false,
                  )
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: kDefaultPadding),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Size\n",
                  style: TextStyle(color: Colors.black),
                ),
                TextSpan(
                    text: "${product.size} cm",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black, fontSize: 20))
              ],
            ),
          ),
        )
      ],
    );
  }
}


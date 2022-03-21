
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../constain.dart';
import '../../../model/Product.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: kDefaultPadding),
      child: Text(
        product.description,
        style: TextStyle(color: kTextColor),
      ),
    );
  }
}

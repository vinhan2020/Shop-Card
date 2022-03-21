// ignore_for_file: unused_local_variable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shopcard/constain.dart';
import 'package:shopcard/model/Product.dart';

class ItemCart extends StatelessWidget {
  final Product product;
  final VoidCallback press;
  const ItemCart({Key? key, required this.product, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.all(
                  Radius.circular(16),
                ),
              ),
              child: Image.asset(product.image),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: kDefaultPadding / 2),
            child: Text(
              product.title,
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(color: kTextLightColor),
            ),
          ),
          Text(
            "\$${product.price}",
            style: TextStyle(fontWeight: FontWeight.bold, color: kTextColor),
          )
        ],
      ),
    );
  }
}


// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../constain.dart';
import '../../../model/Product.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Aristocretic Hand Bag",
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(color: Colors.white)),
          Text(
            product.title,
            style: Theme.of(context).textTheme.headline4?.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: "Price\n"),
                    TextSpan(
                      text: "\$${product.price}",
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          ?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: kDefaultPadding / 2,
              ),
              Expanded(
                child: Image.asset(
                  product.image,
                  fit: BoxFit.fill,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

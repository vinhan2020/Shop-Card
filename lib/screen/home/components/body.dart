// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shopcard/constain.dart';
import 'package:shopcard/model/Product.dart';
import 'package:shopcard/screen/detail/detail_screen.dart';
import 'package:shopcard/screen/home/components/item_cart.dart';

import 'category.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            "Women",
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.70,
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefaultPadding,
                  crossAxisSpacing: kDefaultPadding),
              itemCount: products.length,
              itemBuilder: (context, index) => ItemCart(
                product: products[index],
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=> DetailScreen(product: products[index])),
                  );
                },
              ),
            ),
          ),
        )
      ],
    );
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopcard/constain.dart';
import 'package:shopcard/screen/detail/components/product_detail.dart';

import '../../../model/Product.dart';
import 'add_to_cart.dart';
import 'color_and_size.dart';
import 'color_dot.dart';
import 'description.dart';
import 'out_line_btn_and_fav_heart.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.4),
                  padding: EdgeInsets.only(
                      top: size.height * 0.08,
                      left: kDefaultPadding,
                      bottom: kDefaultPadding),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      ColorAndSize(product: product),
                      Description(product: product),
                      OutlineBtnAndFavHeart(),
                      AddToCard(product: product)
                    ],
                  ),
                ),
                ProductDetail(product: product),
              ],
            ),
          )
        ],
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constain.dart';
import '../../../model/Product.dart';

class AddToCard extends StatelessWidget {
  const AddToCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(kDefaultPadding / 2),
            height: 55,
            width: 60,
            decoration: BoxDecoration(
                border: Border.all(color: product.color),
                borderRadius: BorderRadius.circular(18)),
            child: SvgPicture.asset(
              "assets/icons/add_to_cart.svg",
              color: product.color,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: kDefaultPadding),
            child: SizedBox(
              height: 50,
              width: 290,
              child: TextButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(16))),
                    backgroundColor:
                        MaterialStateProperty.all(
                            product.color)),
                child: Text(
                  "BUY NOW",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}

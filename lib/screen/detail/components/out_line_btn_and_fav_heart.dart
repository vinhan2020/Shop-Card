
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constain.dart';
import 'item_counter.dart';

class OutlineBtnAndFavHeart extends StatelessWidget {
  const OutlineBtnAndFavHeart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ItemCounter(),
        Padding(
          padding:
              const EdgeInsets.only(right: kDefaultPadding),
          child: Container(
            padding: EdgeInsets.all(7),
            height: 32,
            width: 32,
            decoration: BoxDecoration(
                color: Color(0xFFFF6464),
                shape: BoxShape.circle),
            child: SvgPicture.asset("assets/icons/heart.svg"),
          ),
        )
      ],
    );
  }
}

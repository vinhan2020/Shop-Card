
import 'package:flutter/material.dart';

import '../../../constain.dart';

class ItemCounter extends StatefulWidget {
  const ItemCounter({Key? key}) : super(key: key);

  @override
  State<ItemCounter> createState() => _ItemCounterState();
}

class _ItemCounterState extends State<ItemCounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildCounter(
            icon: Icons.remove,
            press: () {
              if (numOfItems > 1) {
                setState(() {
                  numOfItems--;
                });
              }
            }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Text(numOfItems.toString(),
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(fontWeight: FontWeight.bold)),
        ),
        buildCounter(
            icon: Icons.add,
            press: () {
              setState(() {
                numOfItems++;
              });
            }),
      ],
    );
  }

  SizedBox buildCounter({required IconData icon, required VoidCallback press}) {
    return SizedBox(
      width: 40,
      height: 40,
      child: OutlinedButton(
        onPressed: press,
        child: Icon(icon),
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
      ),
    );
  }
}

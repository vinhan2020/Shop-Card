// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

import '../../../constain.dart';

class Categories extends StatefulWidget {
  Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Hand bag", "Jelwelly", "Footwear", "Dresses"];
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding/2),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
  }

  Widget buildCategory(int index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: GestureDetector(
          onTap: () {
            setState(() {
              selectIndex = index;
            });
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                categories[index],
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: selectIndex == index ? kTextColor : kTextLightColor),
              ),
              Container(
                height: 2,
                width: 30,
                color: selectIndex == index ? Colors.black : Colors.transparent,
              )
            ],
          ),
        ),
      );
}

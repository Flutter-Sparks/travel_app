import 'package:flutter/material.dart';

import 'package:travelapp/res.dart';

class CategoryItems extends StatelessWidget {
  const CategoryItems({super.key});

  @override
  Widget build(BuildContext context) {
    Widget category([bool activated = false]) {
      return Padding(
        padding: const EdgeInsets.only(right: 8),
        child: Container(
          height: 45,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              color: activated
                  ? Constants.primaryColor
                  : Constants.secondaryColorBg,
              borderRadius: BorderRadius.circular(1000)),
          child: Center(
            child: Text(
              "Top Rated",
              style: TextStyle(
                  color: activated ? Colors.white : Colors.black,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
      );
    }

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          category(true),
          category(),
          category(),
          category(),
          category(),
        ],
      ),
    );
  }
}

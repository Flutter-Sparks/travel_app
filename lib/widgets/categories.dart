import 'package:flutter/material.dart';

import 'package:travelapp/res.dart';

class CategoryItems extends StatefulWidget {
  const CategoryItems({super.key});

  @override
  State<CategoryItems> createState() => _CategoryItemsState();
}

class _CategoryItemsState extends State<CategoryItems> {
  List<String> travelCategories = [
    'Top Rated',
    'Hotels',
    'Flights',
    'Restaurants',
    'Activities',
    'Landmarks',
    'Beaches',
    'Adventure',
    'Cruises',
    'Events',
    'Shopping',
    'Transportation',
    'Culture',
    'Nightlife',
    'Nature',
    'Family-Friendly',
    'Luxury',
    'Budget-Friendly',
    'Historical',
    'Local Cuisine',
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget category(String text, int index, [bool activated = false]) {
      return Padding(
        padding: const EdgeInsets.only(right: 8),
        child: GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
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
                text,
                style: TextStyle(
                    color: activated ? Colors.white : Colors.black,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
      );
    }

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
              travelCategories.length,
              (index) => category(
                  travelCategories[index], index, selectedIndex == index))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:travelapp/res.dart';
import 'package:travelapp/widgets/categories.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Where are you going?".toUpperCase(),
          style: const TextStyle(
            fontSize: 15,
          ),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Flexible(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Constants.secondaryColorBg,
                    borderRadius: BorderRadius.circular(1000)),
                height: 65,
                child: const Row(
                  children: [
                    Icon(Iconsax.location),
                    SizedBox(width: 5),
                    Text(
                      "Bali, Indonesia",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 10),
            CircleAvatar(
              radius: 30,
              foregroundColor: Colors.black,
              backgroundColor: Constants.secondaryColorBg,
              child: const Icon(Iconsax.filter),
            ),
          ],
        ),
        const SizedBox(height: 10),
        const CategoryItems()
      ],
    );
  }
}

import 'package:flutter/material.dart';

import 'package:travelapp/res.dart';
import 'package:travelapp/widgets/result.dart';

class TrendingSection extends StatelessWidget {
  const TrendingSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Trending",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
            Text(
              "See all",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Constants.primaryColor),
            ),
          ],
        ),
        const SizedBox(height: 10),
        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ResultWidget(),
              ResultWidget(),
              ResultWidget(),
              ResultWidget(),
            ],
          ),
        )
      ],
    );
  }
}

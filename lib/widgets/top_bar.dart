import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:travelapp/res.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Constants.secondaryColorBg,
              child: const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://avatars.githubusercontent.com/u/79366878?v=4'),
                radius: 17,
              ),
            ),
            const SizedBox(width: 5),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello Hello",
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  "Vehan Hemsara 👋🏻",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                )
              ],
            )
          ],
        ),
        Row(
          children: [
            CircleAvatar(
              radius: 25,
              foregroundColor: Colors.black,
              backgroundColor: Constants.secondaryColorBg,
              child: const Icon(Iconsax.calendar),
            ),
            const SizedBox(width: 10),
            CircleAvatar(
              foregroundColor: Colors.black,
              radius: 25,
              backgroundColor: Constants.secondaryColorBg,
              child: const Icon(Iconsax.notification),
            ),
          ],
        )
      ],
    );
  }
}

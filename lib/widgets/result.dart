import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ResultWidget extends StatefulWidget {
  const ResultWidget({
    super.key,
  });

  @override
  State<ResultWidget> createState() => _ResultWidgetState();
}

class _ResultWidgetState extends State<ResultWidget> {
  List<String> imageUrls = [
    "https://images.unsplash.com/photo-1520250497591-112f2f40a3f4?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8aW5kb25laXNhJTIwaG90ZWx8ZW58MHx8MHx8fDA%3D",
    "https://images.unsplash.com/photo-1549294413-26f195200c16?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8aW5kb25laXNhJTIwaG90ZWx8ZW58MHx8MHx8fDA%3D",
    "https://images.unsplash.com/photo-1551882547-ff40c63fe5fa?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGluZG9uZWlzYSUyMGhvdGVsfGVufDB8fDB8fHww",
    "https://images.unsplash.com/photo-1522798514-97ceb8c4f1c8?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fGluZG9uZWlzYSUyMGhvdGVsfGVufDB8fDB8fHww",
    "https://images.unsplash.com/photo-1584132967334-10e028bd69f7?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjh8fGluZG9uZWlzYSUyMGhvdGVsfGVufDB8fDB8fHww",
    // Add more URLs as needed
  ];
  @override
  Widget build(BuildContext context) {
    DecorationImage getRandomImage() {
      String randomImageUrl = imageUrls[Random().nextInt(imageUrls.length)];

      return DecorationImage(
        image: NetworkImage(randomImageUrl),
        fit: BoxFit.cover,
      );
    }

    return Padding(
      padding: const EdgeInsets.only(right: 14),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), image: getRandomImage()),
        width: 310,
        height: 330,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Align(
                alignment: Alignment.topRight,
                child: CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.black.withOpacity(0.2),
                  child: const Icon(
                    Iconsax.lovely,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const Spacer(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.black.withOpacity(0.1),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Kastara Resort",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      Icon(
                                        Iconsax.location,
                                        color: Colors.white,
                                        size: 18,
                                      ),
                                      Text(
                                        "Komada, Indonesia",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "Indonesia: 17,000 islands, diverse beauty, vibrant cultures.",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white.withOpacity(0.7),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15)
          ],
        ),
      ),
    );
  }
}

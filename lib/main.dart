import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:travelapp/res.dart';
import 'package:travelapp/widgets/search.dart';
import 'package:travelapp/widgets/top_bar.dart';
import 'package:travelapp/widgets/top_rated.dart';
import 'package:travelapp/widgets/trending.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Constants.primaryColor,
          items: const [
            BottomNavigationBarItem(icon: Icon(Iconsax.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Iconsax.save_2), label: "Saved"),
            BottomNavigationBarItem(
                icon: Icon(Iconsax.book), label: "Collection"),
            BottomNavigationBarItem(
                icon: Icon(Iconsax.home_trend_down), label: "Hotels"),
            BottomNavigationBarItem(
                icon: Icon(Iconsax.setting), label: "Settings"),
          ]),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TopBar(),
                Constants.kVerticalSpace,
                const SearchBox(),
                Constants.kVerticalSpace,
                const TopRatedSection(),
                Constants.kVerticalSpace,
                const TrendingSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hain/util/cattile.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      // physics: AlwaysScrollableScrollPhysics(),
      children: const [
        CategoryTile(categoryName: "HOME", date: "May 12, 2023", amount: 10000),
        CategoryTile(
            categoryName: "SCHOOL", date: "May 13, 2023", amount: 7000),
        CategoryTile(categoryName: "CAR", date: "May 14, 2023", amount: 12030),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hain/cattile.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CategoryTile(
          categoryName: "HOME",
          date: "May 12, 2023",
          amount: 10000,
        ),
        CategoryTile(
          categoryName: "SCHOOL",
          date: "May 19, 2023",
          amount: 4000,
        ),
        CategoryTile(
          categoryName: "CAR",
          date: "May 21, 2023",
          amount: 12000,
        ),
      ],
    );
  }
}

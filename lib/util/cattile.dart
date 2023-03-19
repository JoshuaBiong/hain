import 'package:flutter/material.dart';
import 'package:hain/pages/category_page/categorypage.dart';

class CategoryTile extends StatelessWidget {
  final String categoryName;
  final String date;
  final int amount;

  const CategoryTile(
      {super.key,
      required this.categoryName,
      required this.date,
      required this.amount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) =>
                CategoryPage(catName: categoryName, amount: amount),
          ),
        ),
        child: Container(
          height: 70,
          width: 330,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 252, 232, 51),
              borderRadius: BorderRadius.circular(7.0)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    categoryName,
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    date,
                    style: const TextStyle(
                        fontSize: 13, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              Text(
                amount.toString(),
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hain/pages/category_page/catpagetop.dart';
import 'package:hain/util/selectionaddmin.dart';

class CategoryPage extends StatelessWidget {
  final String catName;
  final int amount;
  const CategoryPage({super.key, required this.catName, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            catName,
            style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w700,
                color: Colors.black54),
            textAlign: TextAlign.center,
          ),
          CategoryPTop(
            amountFromTop: amount,
          ),
          const SelectionMiddle(),
          Container(
            height: 70,
            decoration: BoxDecoration(color: Colors.amberAccent.shade400),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("BAck")),
        ],
      ),
    );
  }
}

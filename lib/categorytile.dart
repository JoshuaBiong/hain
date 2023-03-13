import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  final String category;
  const CategoryTile({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7), color: Colors.brown.shade300),
      margin: EdgeInsets.all(10),
      height: 100,
      width: 300,
      key: key,
      child: Center(child: Text(category)),
    );
  }
}

import 'package:flutter/material.dart';

class CatPagetile extends StatelessWidget {
  final int catTile;
  final String category;
  final int amount;
  final String date;
  final String index;
  const CatPagetile({
    super.key,
    required this.catTile,
    required this.category,
    required this.date,
    required this.amount,
    required this.index,
  });

  @override
  Widget build(BuildContext context) => ListView.builder(
        itemCount: catTile,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 70,
                decoration: const BoxDecoration(color: Colors.black54),
                child: Text(category),
              ),
              Container(
                height: 70,
                decoration: const BoxDecoration(color: Colors.black54),
                child: Text(date),
              ),
              Container(
                height: 70,
                decoration: const BoxDecoration(color: Colors.black54),
                child: Text(amount.toString()),
              ),
            ],
          );
        },
      );
}

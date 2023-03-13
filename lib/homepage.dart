import 'package:flutter/material.dart';
import 'package:hain/categoryhome.dart';
import 'package:hain/categorytile.dart';

class Homepage extends StatelessWidget {
// final int catCount;

  Homepage({super.key});

  final List<String> categories = ['home', 'school', 'grocery'];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: categories.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
            onTap: (() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CategoryHome(
                            key: key,
                            bartitle: categories[index],
                          )));
            }),
            child: CategoryTile(category: (categories[index])));
      },
    );
  }
}

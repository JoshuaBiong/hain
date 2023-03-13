import 'package:flutter/material.dart';

class CategoryHome extends StatelessWidget {
  final String bartitle;
  const CategoryHome({super.key, required this.bartitle});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: BackButton(onPressed: () {
            Navigator.pop(context);
          }),
          title: Text(bartitle.toUpperCase()),
        ),
        body: const Center(
          child: Text("CATEGORY HOMEPAGE"),
        ),
      ),
    );
  }
}

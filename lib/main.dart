import 'package:flutter/material.dart';

import 'homapge.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 236, 235, 153),
        body: const Homepage(),
        // floatingActionButton: FloatingActionButton(onPressed: (, child: Text("jfkdj"),),),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: const Text("       +       "),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}

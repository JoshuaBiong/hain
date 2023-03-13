import 'package:flutter/material.dart';

import 'homepage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: const Text("Hain"),
        ),
        body: Homepage(),
      ),
    );
  }
}

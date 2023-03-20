import 'package:flutter/material.dart';
// import 'package:hain/util/dialog.dart';

import 'homapge.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  // final void Function()? dialogAccess;
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
      // floatingActionButton: FloatingActionButton(onPressed: (, child: Text("jfkdj"),),),
    );
  }
}

import 'package:flutter/material.dart';

class SelectionMiddle extends StatelessWidget {
  const SelectionMiddle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Container(
        width: double.infinity,
        height: 48,
        decoration: const BoxDecoration(color: Colors.amberAccent),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Minus"),
            VerticalDivider(
              thickness: 2,
              indent: 8,
              endIndent: 8,
              color: Colors.black45,
            ),
            Text("Added"),
          ],
        ),
      ),
    );
  }
}

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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
                onPressed: () {
                  print("Minus Click");
                },
                child: const Text("Minus")),
            const VerticalDivider(
              thickness: 2,
              indent: 8,
              endIndent: 8,
              color: Colors.black45,
            ),
            TextButton(
                onPressed: () {
                  print("Added Click");
                },
                child: const Text("Added")),
          ],
        ),
      ),
    );
  }
}

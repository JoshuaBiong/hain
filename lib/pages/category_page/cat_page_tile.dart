import 'package:flutter/material.dart';

class CatPagetile extends StatelessWidget {
  const CatPagetile({super.key});

  @override
  Widget build(BuildContext context) => ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return Container(
            height: 70,
            width: double.infinity,
            decoration: const BoxDecoration(color: Colors.black54),
            child: const Text("category"),
          );
        },
      );
}

import 'package:flutter/material.dart';

class CategoryPTop extends StatelessWidget {
  final int amountFromTop;
  const CategoryPTop({super.key, required this.amountFromTop});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 4),
      child: Container(
        height: 170,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(11),
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Amount: ",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black45),
                  ),
                  Text(
                    amountFromTop.toString(),
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black45),
                  ),
                ],
              ),
            ),
            const Text("Remaining:"),
            Expanded(
              flex: 4,
              child: Text(
                amountFromTop.toString(),
                style: const TextStyle(fontSize: 70),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

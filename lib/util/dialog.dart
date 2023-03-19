import 'package:flutter/material.dart';

class DialogExample extends StatelessWidget {
  DialogExample({super.key});

  final amount = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('AlertDialog Title'),
          content: SizedBox(
            height: 100,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 11))),
                    controller: amount,
                    textInputAction: TextInputAction.done,
                  ),
                ),
                const SizedBox(
                  height: 9,
                ),
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 11))),
                    controller: amount,
                    textInputAction: TextInputAction.done,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            Text('OK'),
          ],
        ),
      ),
      child: const Text('Show Dialog'),
    );
  }
}

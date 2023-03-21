import 'package:flutter/material.dart';

class Dialogbox extends StatelessWidget {
  final GlobalKey<FormState> formkey;
  final TextEditingController textEditorController;
  const Dialogbox(
      {super.key, required this.formkey, required this.textEditorController});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SizedBox(
        height: 140,
        child: Form(
          key: formkey,
          child: Column(
            children: [
              TextField(
                controller: textEditorController,
                decoration: const InputDecoration(
                  // hintMaxLines: 1,
                  label:
                      Text("amount", style: TextStyle(color: Colors.black38)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        style: BorderStyle.solid, color: Colors.black45),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: textEditorController,
                decoration: const InputDecoration(
                  // hintMaxLines: 1,
                  label: Text("Discription",
                      style: TextStyle(color: Colors.black38)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        style: BorderStyle.solid, color: Colors.black45),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      actions: [
        Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              // print("DB click");
            },
            child: const Text("SAVE"),
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';

class DialogExample extends StatelessWidget {
  DialogExample({super.key});

  // final amount = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  Future<void> showInformationDialog(BuildContext context) async {
    return await showDialog(
        context: context,
        builder: (context) {
          final TextEditingController texteditorController =
              TextEditingController();
          return StatefulBuilder(builder: (context, setState) {
            return AlertDialog(
              content: Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      TextField(
                        controller: texteditorController,
                      )
                    ],
                  )),
            );
          });
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

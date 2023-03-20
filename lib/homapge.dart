import 'package:flutter/material.dart';
import 'package:hain/util/cattile.dart';

class Homepage extends StatelessWidget {
  // final void Function()? dialogAccess;
  Homepage({
    super.key,
  });

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
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 235, 153),
      body: ListView(
        // physics: AlwaysScrollableScrollPhysics(),
        children: const [
          CategoryTile(
              categoryName: "HOME", date: "May 12, 2023", amount: 10000),
          CategoryTile(
              categoryName: "SCHOOL", date: "May 13, 2023", amount: 7000),
          CategoryTile(
              categoryName: "CAR", date: "May 14, 2023", amount: 12030),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 248, 200, 28),
        onPressed: () async {
          await showInformationDialog(context);
          // dialogAccess;

          print("clicked");
        },
        label: const Text("       +       "),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

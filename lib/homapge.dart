import 'package:flutter/material.dart';
import 'package:hain/util/cattile.dart';

class Homepage extends StatelessWidget {
  // final void Function()? dialogAccess;
  Homepage({
    super.key,
  });

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

//-----------------DIALOG BOX

  Future<void> showInformationDialog(BuildContext context) async {
    return await showDialog(
        context: context,
        builder: (context) {
          final TextEditingController texteditorController =
              TextEditingController();
          return StatefulBuilder(builder: (context, setState) {
            return AlertDialog(
              content: SizedBox(
                height: 140,
                child: Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      TextField(
                        controller: texteditorController,
                        decoration: const InputDecoration(
                          // hintMaxLines: 1,
                          label: Text("amount",
                              style: TextStyle(color: Colors.black38)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                                style: BorderStyle.solid,
                                color: Colors.black45),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        controller: texteditorController,
                        decoration: const InputDecoration(
                          // hintMaxLines: 1,
                          label: Text("Discription",
                              style: TextStyle(color: Colors.black38)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                                style: BorderStyle.solid,
                                color: Colors.black45),
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
        },
        label: const Text("       +       "),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

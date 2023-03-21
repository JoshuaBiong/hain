import 'package:flutter/material.dart';
import 'package:hain/pages/category_page/catpagetop.dart';
import 'package:hain/util/selectionaddmin.dart';

import '../../util/dialog.dart';
import 'cat_page_tile.dart';

class CategoryPage extends StatelessWidget {
  final String catName;
  final int amount;

  CategoryPage({super.key, required this.catName, required this.amount});

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  Future<void> showInformationDialog(BuildContext context) async {
    return await showDialog(
        context: context,
        builder: (context) {
          final TextEditingController texteditorController =
              TextEditingController();
          return StatefulBuilder(builder: (context, setState) {
            return Dialogbox(
                formkey: _formkey, textEditorController: texteditorController);
          });
        });
  }

  final List<Object> catTile = <Object>[
    ["School", "data", 4300],
    ["School", "data", 4300],
    ["School", "data", 4300],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  catName,
                  style: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                      color: Colors.black54),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          CategoryPTop(
            amountFromTop: amount,
          ),
          const SelectionMiddle(),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 248, 200, 28),
        onPressed: () async {
          await showInformationDialog(context);
        },
        label: const Padding(
          padding: EdgeInsets.only(left: 70, right: 70),
          child: Icon(
            Icons.remove,
            size: 40,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

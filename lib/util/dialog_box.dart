import 'package:flutter/material.dart';
import 'package:todo/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  final VoidCallback onSave;
  final VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: Container(
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              maxLines: 2,
              minLines: 1,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter a new Task",
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(text: "Save", onPressed: onSave),
                const SizedBox(
                  width: 8,
                ),
                MyButton(text: "Cancel", onPressed: onCancel),
              ],
            )
          ],
        ),
      ),
    );
  }
}

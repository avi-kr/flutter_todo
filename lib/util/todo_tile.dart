import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  final String taskName;
  final bool isTaskCompleted;
  Function(bool?)? onChanged;

  TodoTile({
    super.key,
    required this.taskName,
    required this.isTaskCompleted,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25.0, top: 25.0, right: 25.0),
      child: Container(
        padding: EdgeInsets.all(24.0),
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Row(
          children: [
            // Task CheckBox
            Checkbox(
              value: isTaskCompleted,
              onChanged: onChanged,
              activeColor: Colors.black,
            ),

            // Task Name
            Text(
              taskName,
              style: TextStyle(
                decoration: isTaskCompleted
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

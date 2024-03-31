import 'package:flutter/material.dart';

class TaskTitle extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final void Function(bool?)? checkboxCallback;

  TaskTitle({required this.isChecked, required this.taskTitle, required this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}

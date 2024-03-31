import 'package:flutter/material.dart';

class TaskTitle extends StatelessWidget {
  const TaskTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('This is a task.'),
      trailing: Checkbox(
        value: false,
        onChanged: (bool? value) {},
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/widgets/task_title.dart';

class TasksList extends StatelessWidget {
  final List<Task> tasks;
  final Function checkboxCallback;

  TasksList({required this.tasks, required this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTitle(
          taskTitle: tasks[index].name,
          isChecked: tasks[index].isDone,
          checkboxCallback: (checkboxState) {
            checkboxCallback(tasks[index]);
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}

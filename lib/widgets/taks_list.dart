import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/model/tasks_provider.dart';
import 'package:todoey/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TasksProvider>(builder: (context, tasksProvider, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          final task = tasksProvider.tasks[index];
          return TaskTile(task.done, task.title, (val) {
            tasksProvider.updateTask(task);
          });
        },
        itemCount: tasksProvider.taskCount(),
      );
    });
  }
}

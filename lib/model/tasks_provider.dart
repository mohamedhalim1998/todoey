import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey/model/task.dart';

class TasksProvider extends ChangeNotifier {
  List<Task> _tasks = [
    Task("task 1", false),
    Task("task 2", false),
  ];

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  int taskCount() {
    return tasks.length;
  }

  void addTask(String task) {
    _tasks.add(Task(task, false));
    notifyListeners();
  }
  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }
}

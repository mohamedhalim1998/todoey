import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/model/tasks_provider.dart';

class AddTaskScreen extends StatelessWidget {
  String taskTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Add Task",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Colors.lightBlue,
              ),
            ),
            TextField(
              textAlign: TextAlign.center,
              autofocus: true,
              onChanged: (text) {
                taskTitle = text;
              },
            ),
            FlatButton(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
              onPressed: () {
                Provider.of<TasksProvider>(context).addTask(taskTitle);
                Navigator.pop(context);
              },
              child: Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                color: Colors.lightBlue,
                child: Text(
                  "Add",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

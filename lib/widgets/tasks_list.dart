import 'package:flutter/material.dart';
import './tasks_tile.dart';
import '../models/task.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  // List<TaskTile> _generateTaskTiles() {
  //   return tasks
  //       .map((task) => TaskTile(taskTitle: task.name, isChecked: task.isDone))
  //       .toList();
  // }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            taskTitle: tasks[index].name,
            isChecked: tasks[index].isDone,
            checkBoxCallback: (bool newValue) {
              setState(() {
                tasks[index].isDone = newValue;
              });
            });
      },
      itemCount: tasks.length,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_todoey/models/task_data.dart';
import './screens/tasks_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      child: MaterialApp(
        home: TasksScreen(),
      ),
      create: (BuildContext context) => TaskData(),
    );
  }
}

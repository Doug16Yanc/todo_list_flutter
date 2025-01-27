import 'package:flutter/material.dart';
import 'package:todo_list/screens/task_list.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: TaskList(),
      routes: {
        '/todo-list': (context) => TaskList(),
      },
    );
  }
}
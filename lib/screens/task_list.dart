import 'package:flutter/material.dart';
import 'package:todo_list/screens/form_list.dart';
import 'package:todo_list/utils/task.dart';

class TaskList extends StatefulWidget {
  TaskList({super.key});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  final _controller = TextEditingController();
  List toDoList = [
    ['Estudar Flutter', false],
    ['Fazer um backend com Java', false],
    ['Estudar Kotlin e Android nativo', false],
    ['Explorar a nuvem da AWS', false],
  ];

  void checkBoxChanged(int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  void saveNewTask() {
    setState(() {
      toDoList.add([_controller.text, false]);
      _controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Tarefas do Doug',
        ),
        backgroundColor: Color.fromARGB(255, 6, 35, 110),
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (BuildContext context, index) {
          return Task(
            name: toDoList[index][0],
            isCompleted: toDoList[index][1],
            onChanged: (value) => checkBoxChanged(index),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final newTask = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FormList(),
            ),
          );

          if (newTask != null) {
            setState(() {
              toDoList.add([newTask, false]);
            });
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

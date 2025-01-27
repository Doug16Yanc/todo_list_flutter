import 'package:flutter/material.dart';

class FormList extends StatelessWidget {
  final TextEditingController _taskController = TextEditingController();

  FormList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Adicionar Nova Tarefa", style: TextStyle(color: Colors.white),),
        backgroundColor: Color.fromARGB(255, 6, 35, 110),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _taskController,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: "Digite aqui",
                hintStyle: TextStyle(color: Colors.white, fontSize: 20),
                filled: true,
                fillColor: Color.fromARGB(255, 6, 35, 110),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(width: 70,
              height: 60,
              child: 
                ElevatedButton(
                  onPressed: () {
                    if (_taskController.text.isNotEmpty) {
                      Navigator.pop(context, _taskController.text);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 6, 35, 110),
                    foregroundColor: Colors.white
                  ),
                  child: const Text("Adicionar Tarefa", style: TextStyle(fontSize: 20)),
                ),
            ),
          ],
        ),
      ),
    );
  }
}

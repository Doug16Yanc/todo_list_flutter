import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  const Task({
    super.key,
    required this.name,
    required this.isCompleted,
    required this.onChanged,
  });

  final String name;
  final bool isCompleted;
  final Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20,
        bottom: 0,
      ),
  
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 6, 35, 110),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Checkbox(
                value: isCompleted,
                onChanged: onChanged,
                checkColor: Colors.black,
                activeColor: Colors.white,
                side: const BorderSide(
                  color: Colors.white,
                ),
              ),
              Text(
                name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  decoration: isCompleted
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                  decorationColor: Colors.white,
                  decorationThickness: 2,
                ),
              ),
            ],
          ),
        ),
    );
  }
}
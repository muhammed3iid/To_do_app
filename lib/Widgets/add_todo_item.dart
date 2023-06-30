import 'package:flutter/material.dart';

import '../Constants/colors.dart';

class AddTodoItem extends StatelessWidget {
  final Function? onAddTodoObj;
  final TextEditingController? todoController;

  const AddTodoItem({Key? key, this.onAddTodoObj, this.todoController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(bottom: 20, right: 20, left: 20),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 0.0),
                    blurRadius: 10.0,
                    spreadRadius: 0.0,
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                controller: todoController,
                decoration: const InputDecoration(
                  hintText: 'Add a new to do item',
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 20, right: 20),
            child: ElevatedButton(
              onPressed: () {
                onAddTodoObj!(todoController?.text);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: tdBlue,
                minimumSize: const Size(60, 60),
                elevation: 10,
              ),
              child: const Text(
                '+',
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

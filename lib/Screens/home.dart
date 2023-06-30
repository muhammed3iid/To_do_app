import 'package:flutter/material.dart';
import 'package:to_do_app/constants/colors.dart';
import 'package:to_do_app/widgets/AppBars/app_bar.dart';

import '../Models/todo.dart';
import '../Widgets/add_todo_item.dart';
import '../Widgets/todo_item.dart';
import '../widgets/SearchBoxes/search_box.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final todoList = Todo.todoList();
  final todoController = TextEditingController();

  void handleTodoChange(Todo todo) {
    setState(() {
      todo.isDone = !todo.isDone;
    });
  }

  void deleteTodoObj(int id) {
    setState(() {
      todoList.removeWhere((element) => element.id == id);
    });
  }

  void addTodoObj(String todoText) {
    setState(() {
      todoList.add(
          Todo(id: DateTime.now().millisecondsSinceEpoch, todoText: todoText));
    });
    todoController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: appBar(),
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              children: [
                searchBox(),
                Expanded(
                  child: ListView(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 50, bottom: 20),
                        child: const Text(
                          'All reminders',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      for (Todo todo in todoList)
                        TodoItem(
                          todo: todo,
                          onTodoChanged: handleTodoChange,
                          onDeleteItem: deleteTodoObj,
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          AddTodoItem(
            todoController: todoController,
            onAddTodoObj: addTodoObj,
          ),
        ],
      ),
    );
  }
}

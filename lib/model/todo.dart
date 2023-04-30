class ToDo{
  int id;
  String todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList(){
    return[
      ToDo(id: 1, todoText: 'Morning exercise', isDone: true),
      ToDo(id: 2, todoText: 'Buy groceries', isDone: true),
      ToDo(id: 3, todoText: 'Check mails'),
      ToDo(id: 4, todoText: 'Go to gym'),
      ToDo(id: 5, todoText: 'Team meeting', isDone: true),
    ];
  }

}
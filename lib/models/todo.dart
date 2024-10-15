class Todo {
  String id;
  String todoText;
  bool isDone;

  Todo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<Todo> todoList() {
    return [
      Todo(id: '01', todoText: 'Nguyen duc thang', isDone: true),
      Todo(id: '02', todoText: 'Nguyen thi y tho', isDone: true),
      Todo(id: '03', todoText: 'Nguyen duc thinh', isDone: true),
      Todo(id: '04', todoText: 'Nguyen phan hoai nam', isDone: true),
      Todo(id: '05', todoText: 'Nguyen quoc thinh', isDone: true),
    ];
  }
}

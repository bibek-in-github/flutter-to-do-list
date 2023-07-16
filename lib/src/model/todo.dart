// class ToDo {
//  late String id;
//  late String todoText;
//  late bool isDone;

// ToDo({
//   required this.id,
//   required this.todoText,
//   this.isDone = false,
// });

// static List<ToDo> todoList () {
//   return [
//     ToDo(id: '01', todoText: 'Morning Excercise', isDone: true ),
//     ToDo(id: '02', todoText: 'Buy groceries ', isDone: true ),
//     ToDo(id: '01', todoText: ' check mail',  ),
//     ToDo(id: '01', todoText: 'Team meeting',  ),
//     ToDo(id: '01', todoText: 'work on mobile app',  ),
//     ToDo(id: '01', todoText: 'Dinner with jenny', ),

//   ];
// }
 

// }

class ToDo {
  String? id;
  String todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'Morning Excercise', isDone: true ),
      ToDo(id: '02', todoText: 'Buy Groceries', isDone: true ),
      ToDo(id: '03', todoText: 'Check Emails', ),
      ToDo(id: '04', todoText: 'Team Meeting', ),
      ToDo(id: '05', todoText: 'Work on mobile apps for 2 hour', ),
      ToDo(id: '06', todoText: 'Dinner with Jenny', ),
    ];
  }
}
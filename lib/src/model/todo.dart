class ToDo {
 late String id;
 late String todoText;
 late bool isDone;

ToDo({
  required this.id,
  required this.todoText,
  this.isDone = false,
});

static List<ToDo> todoList () {
  return [
    ToDo(id: '01', todoText: 'Morning Excercise', isDone: true ),
    ToDo(id: '02', todoText: 'Buy groceries ', isDone: true ),
    ToDo(id: '01', todoText: ' check mail',  ),
    ToDo(id: '01', todoText: 'Team meeting',  ),
    ToDo(id: '01', todoText: 'work on mobile app',  ),
    ToDo(id: '01', todoText: 'Dinner with jenny', ),

  ];
}
 

}
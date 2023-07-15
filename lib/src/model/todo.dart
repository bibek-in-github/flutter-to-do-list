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

  ];
}
 

}
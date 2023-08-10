import 'package:flutter/material.dart';
import 'package:to_do_list/src/constants/colors.dart';
import '../model/todo.dart';

class ToDoItem extends StatelessWidget {
  late final ToDo todo;
  late final onToDoChanged;
  late final onDeleteItem;
  ToDoItem(
      {required this.todo,
      required this.onToDoChanged,
      required this.onDeleteItem,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20.0),
      child: ListTile(
        onTap: () {
          onToDoChanged(todo);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
        tileColor: Colors.white,
        leading: Icon(
          todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: tdBlue,
        ),
        title: Text(
          todo.todoText,
          style: TextStyle(
              fontSize: 16.0,
              color: tdBlack,
              decoration: todo.isDone ? TextDecoration.lineThrough : null),
        ),
        trailing: Container(
          padding: const EdgeInsets.all(0.0),
          margin: const EdgeInsets.symmetric(vertical: 12.0),
          height: 35.0,
          width: 35.0,
          decoration: BoxDecoration(
            color: tdRed,
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: IconButton(
            onPressed: () {
              // print('dlt pressed');
              onDeleteItem(todo.id);
            },
            icon: Icon(Icons.delete),
            color: Colors.white,
            iconSize: 18.0,
          ),
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';

// import '../model/todo.dart';
// import '../constants/colors.dart';

// class ToDoItem extends StatelessWidget {
//   final ToDo todo;
//   final onToDoChanged;
//   final onDeleteItem;

//   const ToDoItem({
//     Key? key,
//     required this.todo,
//     required this.onToDoChanged,
//     required this.onDeleteItem,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(bottom: 20),
//       child: ListTile(
//         onTap: () {
//           // print('Clicked on Todo Item.');
//           onToDoChanged(todo);
//         },
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(20),
//         ),
//         contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
//         tileColor: Colors.white,
//         leading: Icon(
//           todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
//           color: tdBlue,
//         ),
//         title: Text(
//           todo.todoText!,
//           style: TextStyle(
//             fontSize: 16,
//             color: tdBlack,
//             decoration: todo.isDone ? TextDecoration.lineThrough : null,
//           ),
//         ),
//         trailing: Container(
//           padding: EdgeInsets.all(0),
//           margin: EdgeInsets.symmetric(vertical: 12),
//           height: 35,
//           width: 35,
//           decoration: BoxDecoration(
//             color: tdRed,
//             borderRadius: BorderRadius.circular(5),
//           ),
//           child: IconButton(
//             color: Colors.white,
//             iconSize: 18,
//             icon: Icon(Icons.delete),
//             onPressed: () {
//               // print('Clicked on delete icon');
//               onDeleteItem(todo.id);
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }

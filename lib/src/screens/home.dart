import 'package:flutter/material.dart';
import 'package:to_do_list/src/constants/colors.dart';
import 'package:to_do_list/src/widgets/todo_item.dart';

import '../model/todo.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final todoList = ToDo.todoList();
  void _handleToDoChange(ToDo todo) {
    setState(() {
      todo.isDone = !todo.isDone;
    });
  }
   void _deleteToDoItem(String id) {
    setState(() {
        todoList.removeWhere((item) => item.id == id);
    });
  
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: _buildAppBar(),
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsetsDirectional.symmetric(
                horizontal: 20.0, vertical: 15.0),
            child: Column(
              children: [
                searchBox(),
                Expanded(
                  child: ListView(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 50.0, bottom: 20.0),
                        child: const Text(
                          'All ToDos',
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      for (ToDo todoo in todoList)
                        ToDoItem(
                          todo: todoo,
                          onToDoChanged: _handleToDoChange,
                          onDeleteItem: _deleteToDoItem,
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(
                        bottom: 20.0, right: 20.0, left: 20.0),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 5.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          const BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 0.0),
                            blurRadius: 10.0,
                            spreadRadius: 0.0,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10.0)),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Add a new ToDo item',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 20.0, right: 20.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      '+',
                      style: TextStyle(fontSize: 40.0),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: tdBlue,
                      minimumSize: Size(60.0, 60.0),
                      elevation: 10.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget searchBox() {
  return Container(
    padding: const EdgeInsetsDirectional.symmetric(horizontal: 15.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20.0),
    ),
    child: TextField(
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(0.0),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.black,
            size: 20.0,
          ),
          prefixIconConstraints:
              BoxConstraints(maxHeight: 20.0, minWidth: 25.0),
          border: InputBorder.none,
          hintText: 'Search',
          hintStyle: TextStyle(color: tdGrey)),
    ),
  );
}

AppBar _buildAppBar() {
  return AppBar(
    backgroundColor: tdBGColor,
    elevation: 0,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(
          Icons.menu,
          color: tdBlack,
          size: 30.0,
        ),
        Container(
          height: 40.0,
          width: 40.0,
          child: ClipRRect(
            child: Image.asset('assests/images/bibek.jpg'),
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
      ],
    ),
  );
}


// import 'package:flutter/material.dart';

// import '../model/todo.dart';
// import '../constants/colors.dart';
// import '../widgets/todo_item.dart';

// class Home extends StatefulWidget {
//   Home({Key? key}) : super(key: key);

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   final todosList = ToDo.todoList();
//   List<ToDo> _foundToDo = [];
//   final _todoController = TextEditingController();

//   @override
//   void initState() {
//     _foundToDo = todosList;
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: tdBGColor,
//       appBar: _buildAppBar(),
//       body: Stack(
//         children: [
//           Container(
//             padding: EdgeInsets.symmetric(
//               horizontal: 20,
//               vertical: 15,
//             ),
//             child: Column(
//               children: [
//                 searchBox(),
//                 Expanded(
//                   child: ListView(
//                     children: [
//                       Container(
//                         margin: EdgeInsets.only(
//                           top: 50,
//                           bottom: 20,
//                         ),
//                         child: Text(
//                           'All ToDos',
//                           style: TextStyle(
//                             fontSize: 30,
//                             fontWeight: FontWeight.w500,
//                           ),
//                         ),
//                       ),
//                       for (ToDo todoo in _foundToDo.reversed)
//                         ToDoItem(
//                           todo: todoo,
//                           onToDoChanged: _handleToDoChange,
//                           onDeleteItem: _deleteToDoItem,
//                         ),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: Row(children: [
//               Expanded(
//                 child: Container(
//                   margin: EdgeInsets.only(
//                     bottom: 20,
//                     right: 20,
//                     left: 20,
//                   ),
//                   padding: EdgeInsets.symmetric(
//                     horizontal: 20,
//                     vertical: 5,
//                   ),
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     boxShadow: const [
//                       BoxShadow(
//                         color: Colors.grey,
//                         offset: Offset(0.0, 0.0),
//                         blurRadius: 10.0,
//                         spreadRadius: 0.0,
//                       ),
//                     ],
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   child: TextField(
//                     controller: _todoController,
//                     decoration: InputDecoration(
//                         hintText: 'Add a new todo item',
//                         border: InputBorder.none),
//                   ),
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.only(
//                   bottom: 20,
//                   right: 20,
//                 ),
//                 child: ElevatedButton(
//                   child: Text(
//                     '+',
//                     style: TextStyle(
//                       fontSize: 40,
//                     ),
//                   ),
//                   onPressed: () {
//                     _addToDoItem(_todoController.text);
//                   },
//                   style: ElevatedButton.styleFrom(
//                     primary: tdBlue,
//                     minimumSize: Size(60, 60),
//                     elevation: 10,
//                   ),
//                 ),
//               ),
//             ]),
//           ),
//         ],
//       ),
//     );
//   }

//   void _handleToDoChange(ToDo todo) {
//     setState(() {
//       todo.isDone = !todo.isDone;
//     });
//   }

//   void _deleteToDoItem(String id) {
//     setState(() {
//       todosList.removeWhere((item) => item.id == id);
//     });
//   }

//   void _addToDoItem(String toDo) {
//     setState(() {
//       todosList.add(ToDo(
//         id: DateTime.now().millisecondsSinceEpoch.toString(),
//         todoText: toDo,
//       ));
//     });
//     _todoController.clear();
//   }

//   void _runFilter(String enteredKeyword) {
//     List<ToDo> results = [];
//     if (enteredKeyword.isEmpty) {
//       results = todosList;
//     } else {
//       results = todosList
//           .where((item) => item.todoText!
//               .toLowerCase()
//               .contains(enteredKeyword.toLowerCase()))
//           .toList();
//     }

//     setState(() {
//       _foundToDo = results;
//     });
//   }

//   Widget searchBox() {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 15),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: TextField(
//         onChanged: (value) => _runFilter(value),
//         decoration: InputDecoration(
//           contentPadding: EdgeInsets.all(0),
//           prefixIcon: Icon(
//             Icons.search,
//             color: tdBlack,
//             size: 20,
//           ),
//           prefixIconConstraints: BoxConstraints(
//             maxHeight: 20,
//             minWidth: 25,
//           ),
//           border: InputBorder.none,
//           hintText: 'Search',
//           hintStyle: TextStyle(color: tdGrey),
//         ),
//       ),
//     );
//   }

//   AppBar _buildAppBar() {
//     return AppBar(
//       backgroundColor: tdBGColor,
//       elevation: 0,
//       title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
//         Icon(
//           Icons.menu,
//           color: tdBlack,
//           size: 30,
//         ),
//         Container(
//           height: 40,
//           width: 40,
//           child: ClipRRect(
//             borderRadius: BorderRadius.circular(20),
//             child: Image.asset('assets/images/avatar.jpeg'),
//           ),
//         ),
//       ]),
//     );
//   }
// }

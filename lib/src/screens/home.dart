import 'package:flutter/material.dart';
import 'package:to_do_list/src/constants/colors.dart';
import 'package:to_do_list/src/widgets/todo_item.dart';

import '../model/todo.dart';

class Home extends StatelessWidget {
   Home({super.key});

  final todoList = ToDo.todoList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: _buildAppBar(),
      body: Container(
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

                  for( ToDo todo in todoList)
                  ToDoItem(todo: todo,),
                
                ],
              ),
            ),
          ],
        ),
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

import 'package:flutter/material.dart';
import 'package:to_do_list/src/constants/colors.dart';

class ToDoItem extends StatelessWidget {
  const ToDoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20.0),
      child: ListTile(
        
        onTap: () {
          print('clicked');
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
        tileColor: Colors.white,
        leading: const Icon(
          Icons.check_box,
          color: tdBlue,
        ),
        title: Text(
          'Check email',
          style: TextStyle(
              fontSize: 16.0,
              color: tdBlack,
              decoration: TextDecoration.lineThrough),
        ),
        trailing: Container(
          padding: const EdgeInsets.all(0.0),
          margin:const EdgeInsets.symmetric(vertical: 12.0),
          height: 35.0,
          width: 35.0,
          decoration: BoxDecoration(
            color: tdRed,
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: IconButton(
            onPressed: () {
              print('dlt pressed');
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

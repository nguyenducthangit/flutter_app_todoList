import 'package:flutter/material.dart';
import '../models/todo.dart';
import '../constants/colors.dart';

class TodoappItem extends StatelessWidget {
  final Todo todo;
  final OnToDoChange;
  final OnDeleteItem;

  const TodoappItem({
    Key? key,
    required this.todo,
    required this.OnToDoChange,
    required this.OnDeleteItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          // print('Clicked on to item');
          OnToDoChange(todo);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        tileColor: Colors.white,
        leading: Icon(
          todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: tdBlue,
        ),
        title: Text(
          todo.todoText,
          style: TextStyle(
            fontSize: 16,
            color: tdBlack,
            decoration:
                todo.isDone ? TextDecoration.lineThrough : TextDecoration.none,
          ),
        ),
        trailing: Container(
          padding: EdgeInsets.all(0),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: tdRed,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            onPressed: () {
              // print('Clicked on to icons');
              OnDeleteItem(todo.id);
              // thong bao ra man hinh da xoa thanh cong
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Row(
                  children: [
                    Icon(
                      Icons.delete,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Delete succesfully',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                backgroundColor: Colors.red,
              ));
            },
            iconSize: 18,
            color: Colors.white,
            icon: Icon(Icons.delete),
          ),
        ),
      ),
    );
  }
}

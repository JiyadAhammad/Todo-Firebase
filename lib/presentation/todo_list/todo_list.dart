import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/presentation/todo_list/widget/todo_widget.dart';
import 'package:todo/provider/todos.dart';

class TodoListWidget extends StatelessWidget {
  const TodoListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TodoProvider>(context);
    final todos = provider.todos;
    return todos.isEmpty
        ? const Center(
            child: Text(
              'Not Todos',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          )
        : ListView.separated(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.all(15),
            separatorBuilder: (context, index) => Container(
                  color: Colors.grey,
                  height: 5,
                ),
            itemCount: todos.length,
            itemBuilder: (BuildContext context, int index) {
              final todo = todos[index];
              return TodoWidget(
                todo: todo,
              );
            });
  }
}

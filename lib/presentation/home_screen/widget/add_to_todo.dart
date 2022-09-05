import 'package:flutter/material.dart';
import 'package:todo/presentation/home_screen/widget/todo_form.dart';

class AddToTodoWidget extends StatefulWidget {
  const AddToTodoWidget({Key? key}) : super(key: key);

  @override
  State<AddToTodoWidget> createState() => _AddToTodoWidgetState();
}

class _AddToTodoWidgetState extends State<AddToTodoWidget> {
  // final _formKey = GlobalKey<FormState>();
  String title = '';
  String description = '';
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Add Todo'),
      content: Column(
        children: [
          TodoFormWidget(
              onChangedTitle: (title) => setState(() {
                    this.title = title;
                  }),
              onChangedDescroption: (description) => setState(() {
                    this.description = description;
                  }),
              onSavedTodo: () {})
        ],
      ),
    );
  }
}

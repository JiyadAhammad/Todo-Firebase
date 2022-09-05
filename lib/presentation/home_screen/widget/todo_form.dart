import 'package:flutter/material.dart';

class TodoFormWidget extends StatelessWidget {
  final String title;
  final String description;
  final ValueChanged<String> onChangedTitle;
  final ValueChanged<String> onChangedDescroption;
  final VoidCallback onSavedTodo;
  const TodoFormWidget(
      {Key? key,
      this.title = '',
      this.description = '',
      required this.onChangedTitle,
      required this.onChangedDescroption,
      required this.onSavedTodo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(
          height: 30,
        ),
        buildTile(),
        const SizedBox(
          height: 30,
        ),
        buildDescription(),
        const SizedBox(
          height: 30,
        ),
        buildButton(context),
      ],
    );
  }

  Widget buildTile() {
    return TextFormField(
      
      maxLines: 1,
      minLines: 1,
      initialValue: title,
      onChanged: onChangedTitle,
      validator: (title) {
        if (title!.isEmpty) {
          return 'Text title canot be Empty';
        }
        return null;
      },
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Enter Title',
      ),
    );
  }

  Widget buildDescription() {
    return TextFormField(
      maxLines: 2,
      // minLines: 1,
      initialValue: description,
      onChanged: onChangedDescroption,
      validator: (description) {
        if (description!.isEmpty) {
          return 'Text description cannot be Empty';
        }
        return null;
      },
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Enter Description',
      ),
    );
  }

  Widget buildButton(context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onHover: (value) => true,
        onPressed: onSavedTodo,
        child: const Text(
          'Save Todo',
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:todo/model/todos.dart';

class TodoProvider extends ChangeNotifier {
  final List<Todo> _allTodos = [
    Todo(createdTime: DateTime.now(), title: 'halo', description: '''
 a 
 b  
 c  
'''),
    Todo(createdTime: DateTime.now(), title: 'hai', description: '''
a  
b  
c  
'''),
    Todo(createdTime: DateTime.now(), title: 'fine', description: '''
a  
b  
c  
'''),
    Todo(createdTime: DateTime.now(), title: 'then', description: '''
a  
b  
c  
'''),
    Todo(createdTime: DateTime.now(), title: 'ready', description: '''
a  
b  
c  
'''),
  ];
  List<Todo> get todos =>
      _allTodos.where((element) => element.isDone == false).toList();
}

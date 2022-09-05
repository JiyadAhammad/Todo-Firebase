import 'package:flutter/cupertino.dart';
import 'package:todo/firebase/firebase_api.dart';
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
  List<Todo> get todoCompleted =>
      _allTodos.where((element) => element.isDone == true).toList();

  void addTodo(Todo todo) =>FirebaseApi.createTodo(todo);

  void removeTodo(Todo todo) {
    _allTodos.remove(todo);
    notifyListeners();
  }

  bool? toggleTodoStatus(Todo todo) {
    todo.isDone = !todo.isDone!;
    notifyListeners();
    return todo.isDone;
  }

  void updateTodo(Todo todo, String title, String description) {
    todo.title = title;
    todo.description = description;
    notifyListeners();
  }
}

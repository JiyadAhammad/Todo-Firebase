import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:todo/model/todos.dart';

class FirebaseApi {
  static Future<String> createTodo (Todo todo) async{
    final docTodo = FirebaseFirestore.instance.collection('todo').doc();
    todo.id =docTodo.id;
    await docTodo.set(todo.toJson());
    return docTodo.id;
  }
}
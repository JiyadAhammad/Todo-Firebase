import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo/firebase/untils.dart';

class TodoField {
  static const createdTime = 'createdTime';
}

class Todo {
  DateTime? createdTime;
  String? title;
  String? id;
  String? description;
  bool? isDone;
  Todo({
    required this.createdTime,
    required this.title,
    this.id,
    this.description = '',
    this.isDone = false,
  });
  static Todo fromJson(Map<String, dynamic> json) => Todo(
        createdTime: Untils.toDateTime(json['createdTime']),
        title: json['title'],
        description: json['description'],
        id: json['id'],
        isDone: json['isDone'],
      );

  Map<String, dynamic> toJson() => {
        'createdTime': Untils.fromDateTimeToJson(createdTime!),
        'title': title,
        'description': description,
        'id': id,
        'isDone': isDone,
      };
}

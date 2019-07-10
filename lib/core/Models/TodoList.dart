import 'package:uuid/uuid.dart';
import 'package:group_todo/ui/Styles/AppColors.dart';
import 'Todo.dart';
import 'package:flutter/material.dart';

// This is the model class for a list of todos
// This class generally repersents one list of todos in the app

class TodoList {
  static const Color defaultColor = AppColors.DarkColor;

  final String uuid;
  List<Todo> todos;
  String name;
  Color color;

  TodoList(this.name, {color: defaultColor}): 
    todos = [],
    uuid = Uuid().v1();

  @override
  String toString() => '$name (id = $uuid)';
}


// This class store's the all app's data

import 'package:group_todo/core/Models/TodoList.dart';
import 'package:group_todo/core/Models/User.dart';

class AppState {

  User user;
  List<TodoList> todoLists;

  // Whether this is a temporary/guest user
  // If this is set to true, this user's firstName,
  // lastName, userName, email and password all could be null
  bool tmpUser;

  AppState():
    user = User.tmp(),
    todoLists = [],
    tmpUser = true;

  
}
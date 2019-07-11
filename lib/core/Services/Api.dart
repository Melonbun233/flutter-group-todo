// Api with the backend


import 'package:group_todo/core/Models/TodoList.dart';
import 'package:group_todo/core/Models/User.dart';

class Api {

  // fetch a user's profile
  Future<User> fetchUser(String userUuid) async {
    // TODO: Implement fetching user's profile
    return User.tmp();
  }

  // fetch a user's todolists
  Future<List<TodoList>> fetchUserTodoLists(String userUuid) async {
    // TODO: Implement fetching user's todolists
    return null;
  }

}

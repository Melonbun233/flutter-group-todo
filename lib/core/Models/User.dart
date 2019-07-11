
import 'package:uuid/uuid.dart';

class User {

  final String uuid;

  String firstName;
  String lastName;
  String userName;
  String email;
  String description = '';

  // User({@required this.email, this.firstName, this.lastName, this.userName}): 
  //   tmpUser = false,
  //   todoLists = [],
  //   uuid = Uuid().v1();

  // Constructor for creating a temporary/guest user
  User.tmp(): uuid = Uuid().v1();

  // Constructing a user from Backend API
  User.fetch(this.userName, this.email, this.firstName, this.lastName, 
    this.description, this.uuid);

  @override
  String toString() => 'User: ' + uuid;

}
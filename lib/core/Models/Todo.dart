import 'package:uuid/uuid.dart';
// This is the model class for a single todo task

class Todo {

  String name;
  final String uuid;
  String description;
  DateTime deadline;
  Duration repeat;
  bool notification;
  String tag;

  Todo(this.name, {this.description, this.deadline, this.repeat, 
    this.notification, this.tag}): 
    assert(name != null),
    uuid = Uuid().v1();

  @override
  String toString() => '$name (id = $uuid)';

}
import 'package:flutter/cupertino.dart';
import 'package:group_todo/core/Services/Locator.dart';
import 'package:group_todo/core/Services/Router.dart' as router;
import 'package:group_todo/ui/Styles/AppThemes.dart';


void main() {
  // Service locator setup
  setupLocator();
  // App entry point
  runApp(GroupTodo());
}

// GroupTodo class is the root widget of the app
class GroupTodo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // Choose Cupertino to build a ios-style app
    return CupertinoApp(
      // The name of this app
      title: 'Group Todo',

      // The theme defined in AppThemes.dart
      theme: LightTheme,

      // All routes are defined in router
      // generateRoute handles which routes to go to
      onGenerateRoute: router.generateRoute,

      // The first screen when entering the app
      initialRoute: router.SignInRoute,
    );
  }
}

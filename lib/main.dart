import 'package:flutter/cupertino.dart';
import 'Pages/Home/HomePage.dart';
import 'Pages/SignIn/SignInPage.dart';
import 'Style/AppThemes.dart';

// The entry point of this app
void main() => runApp(GroupTodo());

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

      // The first screen when entering the app
      initialRoute: '/SignIn',
      // All routes used by the app
      // When navigating to one of them, build the corresponding screen widget
      // Those widgets are defined in screens/
      routes: {
        // The main navigator for this app, contains most of the user tasks
        '/': (context) => HomePage(),

        // Sign in page contains another navigator for the process of signin/signup
        '/SignIn': (context) => SignInPage(),
      },
    );
  }
}

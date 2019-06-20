import 'package:flutter/cupertino.dart';
import 'Screens/HomePage.dart';
import 'Screens/LogInPage.dart';

// The entry point of this app
void main() => runApp(GroupTodo());

class GroupTodo extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    // Choose Cupertino to build a ios-style app
    return CupertinoApp(
      title: 'Group Todo',

      // The first screen when entering the app
      // Currently login screen is just UI (not really logging you in)
      initialRoute: LogInPage.routeName,

      // All routes used by the app
      // When navigating to one of them, build the corresponding screen widget
      // Those widgets are defined in screens/
      routes: {
        LogInPage.routeName: (context) => LogInPage(),
        HomePage.routeName: (context) => HomePage(),
      },
    );
  }
}

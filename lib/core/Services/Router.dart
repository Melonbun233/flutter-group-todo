// This file contains configurations of this app's all routes

import 'package:flutter/cupertino.dart';
import 'package:group_todo/ui/Views/Home/HomePage.dart';
import 'package:group_todo/ui/Views/SignIn/SignInPage.dart';

// Routes Constants
const String HomeRoute = '/';
const String SignInRoute = '/signin';


Route<dynamic> generateRoute(RouteSettings settings) {
  switch(settings.name) {
    case HomeRoute :
      return CupertinoPageRoute(builder: (_) => HomePage());
    case SignInRoute :
      return CupertinoPageRoute(builder: (_) => SignInPage());
    
    // Should never go in here
    default:
      return CupertinoPageRoute(builder: (_) {
        return CupertinoPageScaffold(
          child: Center(
            child: Text('No Such Route: ${settings.name}')
          ),
        );
      });
  }
}
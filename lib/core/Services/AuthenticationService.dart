// Authentication service for user sign in

import 'dart:async';

import 'package:group_todo/core/Locator.dart';
import 'package:group_todo/core/Models/AppState.dart';
import 'package:group_todo/core/Models/User.dart';
import 'package:group_todo/core/Services/Api.dart';

class AuthenticationService {

  StreamController<AppState> appStateController = StreamController<AppState>();

  AppState _appState = locator<AppState>();

  Api _api = locator<Api>();

  // Sign in with user's email and password
  Future<bool> signin(String email, String password) async{
    // TODO: Implement some real authentication service here
    // Assume we have got an uuid from the authentication
    String uuid = '';
    User user = await _api.fetchUser(uuid);
    
    // Add the fetched user to the stream controller
    if (user != null) {
      _appState.user = user;
      _appState.tmpUser = false;
      appStateController.add(_appState);
      return true;  
    }
    // failed fetching user
    return false;
  }
}
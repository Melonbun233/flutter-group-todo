// This file registers all services and models
import 'package:get_it/get_it.dart';
import 'package:group_todo/core/Models/AppState.dart';
import 'package:group_todo/core/Services/Api.dart';
import 'package:group_todo/core/Services/AuthenticationService.dart';
import 'package:group_todo/core/ViewModels/HomeViewModel.dart';
import 'package:group_todo/core/ViewModels/SignInViewModel.dart';

GetIt locator = GetIt();

void setupLocator() {
  // Register App's data models
  locator.registerLazySingleton(() => AppState());
  
  // Register Services
  locator.registerLazySingleton(() => AuthenticationService());
  locator.registerLazySingleton(() => Api());

  // Register View Models
  locator.registerLazySingleton(() => SignInViewModel());
  locator.registerLazySingleton(() => HomeViewModel());
}
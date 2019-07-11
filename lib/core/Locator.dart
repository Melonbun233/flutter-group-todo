// This file registers all services and models
import 'package:get_it/get_it.dart';
import 'package:group_todo/core/ViewModels/SignInViewModel.dart';

GetIt locator = GetIt();

void setupLocator() {
  // Register Services


  // Register Models
  locator.registerLazySingleton(() => SignInViewModel());
  //locator.registerLazySingleton(() => HomeViewModel());
}
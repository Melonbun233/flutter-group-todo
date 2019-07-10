// This file registers all all services used by view models
import 'package:get_it/get_it.dart';
import 'package:group_todo/core/ViewModels/SignInViewModel.dart';

GetIt locator = GetIt();

void setupLocator() {
  locator.registerLazySingleton(() => SignInViewModel());
}
// This view model is used for all other view models to extend
import 'package:flutter/cupertino.dart';
import 'package:group_todo/core/ViewModels/ViewState.dart';

class BaseViewModel extends ChangeNotifier {
  // Each view model should have a state
  ViewState _state = ViewState.Idle;

  ViewState get state => _state;

  // Call this method when we want to update UI
  void setState(ViewState state) {
    _state = state;
    notifyListeners();
  }
}
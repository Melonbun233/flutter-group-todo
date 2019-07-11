// This is the ViewModel for SignInPage which you can find in lib/ui/Views/SignIn/
import 'package:flutter/material.dart';
import 'package:group_todo/core/ViewModels/BaseViewModel.dart';
import 'package:group_todo/core/Services/Router.dart' as router;
import 'package:group_todo/core/ViewState.dart';

class SignInViewModel extends BaseViewModel {
  bool passwordSecured = true;
  String email;
  String password;

  void onEmailChanged(String email) {
    this.email = email;
    print("Email changed to: $email");
  }

  void onPasswordChanged(String password) {
    this.password = password;
    print("Password changed to: $password");
  }

  void onSignInButtonPressed() {
    //TODO: Sign in process
  }

  void onGoogleSignInButtonPressed() {
    //TODO: Google sign in process
  }

  void onSignUpButtonPressed() {
    //TODO: Sign up process
  }

  void onSkipButtonPressed(BuildContext context) {
    Navigator.pushNamed(context, router.HomeRoute);
  }

    // When password becomes visible indicates the password is insecured
  void onSetPasswordVisible() {
    passwordSecured = false;
    // Notify
    setState(ViewState.Idle);
  }

  // When password becomes invisible indicates the password is secured
  void onSetPasswordInvisible() {
    passwordSecured = true;
    setState(ViewState.Idle);
  }
}
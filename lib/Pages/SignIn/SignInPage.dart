import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'SignInTextFieldSection.dart';
import 'SignInTitleSection.dart';
import 'SignInButtonSection.dart';

// This is a page widget for sign in page, this widget controlls related sign in data and it's subsections.
// The SignInPage is stateless so that it doesn't need to rebuild the whole page when some
// data are changed. Instead, it only rebuilds its subsections when necessary.
class SignInPage extends StatelessWidget {
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Column(
        children: <Widget>[
          // Title Section
          Expanded(flex: 1, child: SignInTitleSection()),
          // Textfield Section
          Expanded(flex: 1, child: SignInTextFieldSection(_onEmailChanged, _onPasswordChanged)),
          // Button Section
          Expanded(flex: 2, child: SignInButtonSection(
            onSignInButtonPressed: _onSignInButtonPressed,
            onGoogleSignInButtonPressed: _onGoogleSignInButtonPressed,
            onSignUpButtonPressed: _onSignUpButtonPressed,
            onSkipButtonPresesd: _onSkipButtonPressed,
          )),
        ],
      )
    );
  }

  void _onEmailChanged(String email) {
    this.email = email;
    print("Email changed to: $email");
  }

  void _onPasswordChanged(String password) {
    this.password = password;
    print("Password changed to: $password");
  }

  void _onSignInButtonPressed() {

  }

  void _onGoogleSignInButtonPressed() {

  }

  void _onSignUpButtonPressed() {

  }

  void _onSkipButtonPressed() {
    
  }
}
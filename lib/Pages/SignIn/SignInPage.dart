import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:group_todo/Style/AppColors.dart';
import 'SignInTextField.dart';


class SignInPage extends StatelessWidget {
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return 
    CupertinoPageScaffold(
      child: Column(
        children: <Widget>[
          // Title Section
          Expanded(flex: 1, child: _titleSection),
          // Textfield Section
          Expanded(flex: 1, child: SignInTextField(_onEmailChanged, _onPasswordChanged)),
          // Button Section
          Expanded(flex: 2, child: Placeholder(strokeWidth: 0)),
        ],
      )
    );
    
  }

  // Title section widget
  final _titleSection = Container(
    padding: const EdgeInsets.only(bottom: 24.0),
    color: AppColors.DarkColor,
    alignment: Alignment.bottomCenter,
    child: Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(right: 4.0),
          child: Text(
            "GROUP", 
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w400,
              color: Colors.white
            )
          )
        ),
        Container(
          padding: const EdgeInsets.only(left: 4.0),
          child: Text(
            "TODO",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w400,
              color: AppColors.LightColor
            )
          )
        )
      ],
    ),
  );

  void _onEmailChanged(String email) {
    this.email = email;
    print("Email changed to: $email");
  }

  void _onPasswordChanged(String password) {
      this.password = password;
      print("Password changed to: $password");
  }
}
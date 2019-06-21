import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:group_todo/Style/AppColors.dart';

// This class is the textfields of users' email and password.
// This class is a stateful widget, and it manages its own state, which means that
// the SignInPage widget doen't need to worry about the inner state (text inside the textfields)
// of this widget.

class SignInTextField extends StatelessWidget {

  SignInTextField(this.onEmailChanged, this.onPasswordChanged);

  final Function onEmailChanged;
  final Function onPasswordChanged;

  // Decoration used for the two textfields
  final _boxDecoration = BoxDecoration(
    color: Colors.white,
    border: Border.all(
      color: AppColors.LightColor,
      width: 2.0
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(24.0)
    )
  );

  // Text style used for placeholders and text in the textfields
  final _textStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppColors.DarkColor,
  );
  // Paddings used for text in the textfields
  final _textPadding = EdgeInsets.only(left: 32, right:32, top: 16, bottom: 16);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget> [
          // Textfield Section
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(38),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  // Email textfield
                  CupertinoTextField(
                    padding: _textPadding,
                    placeholder: "Email Address",
                    placeholderStyle: _textStyle,
                    onChanged: onEmailChanged,
                    keyboardType: TextInputType.emailAddress,
                    decoration: _boxDecoration,
                    style: _textStyle,
                  ),

                  // Password textfield
                  CupertinoTextField(
                    padding: _textPadding,
                    placeholder: "Password",
                    placeholderStyle: _textStyle,
                    onChanged: onPasswordChanged,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: _boxDecoration,
                    style: _textStyle,
                  ),
                ]
              )
            )
          ),

          // A divider dividing up the textfields and buttons, drawn by a container
          Container(
            width: 50,
            height: 3,
            color: AppColors.LightColor,
          )
        ]
    );
  }
}
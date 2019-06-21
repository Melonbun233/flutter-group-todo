import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:group_todo/Style/AppColors.dart';
import 'package:group_todo/Common/VisibilityIconButton.dart';

// This class is the textfields of users' email and password.
// The SignInPage widget doen't need to worry about the inner state (text inside the textfields)
// of this widget.

class SignInTextField extends StatefulWidget {
  // Two callbacks when text in email or password textfields changes
  final ValueChanged<String> onEmailChanged;
  final ValueChanged<String> onPasswordChanged;

  SignInTextField(this.onEmailChanged, this.onPasswordChanged);

  _SignInTextFieldState createState() => _SignInTextFieldState();
}

class _SignInTextFieldState extends State<SignInTextField> {

  var _passwordSecured = true;

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
  final _textPadding = EdgeInsets.only(left: 24, right:24, top: 16, bottom: 16);

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
                    onChanged: widget.onEmailChanged,
                    keyboardType: TextInputType.emailAddress,
                    decoration: _boxDecoration,
                    style: _textStyle,
                  ),

                  // Password textfield
                  CupertinoTextField(
                    padding: _textPadding,
                    placeholder: "Password",
                    placeholderStyle: _textStyle,
                    onChanged: widget.onPasswordChanged,
                    keyboardType: TextInputType.text,
                    obscureText: _passwordSecured,
                    decoration: _boxDecoration,
                    style: _textStyle,
                    suffix: VisibilityIconButton(
                      onSetInvisible: _onSetPasswordInvisible,
                      onSetVisible: _onSetPasswordVisible,
                      color: AppColors.DarkColor,
                      iconSize: 24,
                      initialVisibility: _passwordSecured,
                    ),
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

  void _onSetPasswordVisible() {
    setState(() {
      _passwordSecured = true;
    });
  }

  void _onSetPasswordInvisible() {
    setState(() {
      _passwordSecured = false;
    });
  }
}
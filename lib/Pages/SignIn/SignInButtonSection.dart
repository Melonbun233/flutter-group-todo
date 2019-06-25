import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:group_todo/Style/AppColors.dart';
import 'package:group_todo/Style/AppTextStyles.dart';


// This class constructs the button section of Sign In Page.
// This section is constructed with 4 buttons: sign in, google sign in, sign up, and skip,
// and button provides a callback function.

class SignInButtonSection extends StatelessWidget {

  // 4 callbacks for the buttons' onPressed callback
  // Those callbacks are default set to null if no function is provided
  final VoidCallback onSignInButtonPressed;
  final VoidCallback onGoogleSignInButtonPressed;
  final VoidCallback onSignUpButtonPressed;
  final VoidCallback onSkipButtonPresesd;

  // Border radius used for the bordered buttons
  final BorderRadius buttonRadius = const BorderRadius.all(Radius.circular(24));
  // Button height
  final double buttonHeight = 50;


  SignInButtonSection({this.onSignInButtonPressed, this.onGoogleSignInButtonPressed,
    this.onSignUpButtonPressed, this.onSkipButtonPresesd});

  @override 
  Widget build(BuildContext context) {
    // Container for all 4 buttons
    return Container(
      padding: const EdgeInsets.all(36),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Column for the upper 3 buttons because they have similar layouts
          Expanded (flex: 3, child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(child: _buildSignInButton()),
              Expanded(child: _buildGoogleSignInButton()),
              Expanded(child: _buildSignUpButton()),
            ],
          )),

          // Column for the skip button, it resides at the bottom of the page
          Expanded (flex: 1, child: _buildSkipButton())
        ],
      )
    );
    
    
  }

  Widget _buildSignInButton() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Container(
            height: buttonHeight,
            child: CupertinoButton.filled(
              onPressed: onSignInButtonPressed,
              borderRadius: buttonRadius,
              child: Text(
                "SIGN IN",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: AppTextStyles.small.fontSize,
                  fontWeight: FontWeight.bold
                ),
              ),
            )
          )
        )
      ]
    );
  }

  Widget _buildGoogleSignInButton() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Container(
            height: buttonHeight,
            decoration: BoxDecoration(
              borderRadius: buttonRadius,
              border: new Border.all(
                color: AppColors.DarkColor,
                width: 2
              )
            ),
            child: CupertinoButton(
              onPressed: onGoogleSignInButtonPressed,
              borderRadius: buttonRadius,
              child: Text(
                "SIGN IN WITH GOOGLE",
                style: TextStyle(
                  color: AppColors.DarkColor,
                  fontSize: AppTextStyles.small.fontSize,
                  fontWeight: FontWeight.bold
                )
              )
            )
          )
        )
      ],
    );
  }

  Widget _buildSignUpButton() {
    return Container(
      alignment: Alignment.topCenter,
      child: Container(
        child: CupertinoButton( 
          onPressed: onSignUpButtonPressed,
          borderRadius: buttonRadius,
          child: Text( 
            "Sign Up",
            style: TextStyle( 
              color: AppColors.DarkColor,
              fontSize: AppTextStyles.h5.fontSize,
              fontWeight: FontWeight.normal
            )
          )
        )
      )
    );
  }

  Widget _buildSkipButton() {
    return Container(
      alignment: Alignment.bottomRight,
      child: Container(
        child: CupertinoButton(
          onPressed: onSkipButtonPresesd,
          child: Text(
            "Skip",
            style: TextStyle(
              color: AppColors.DarkColor,
              fontSize: AppTextStyles.h5.fontSize,
              fontWeight: FontWeight.normal
            )
          )
        )
      )
    );
  }
  
}
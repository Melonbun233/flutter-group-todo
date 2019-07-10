import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:group_todo/ui/Styles/AppColors.dart';
import 'package:group_todo/ui/Styles/AppTextStyles.dart';
// This class constructs a title section for sign in page
// This section is a stateless widget

class SignInTitleSection extends StatelessWidget {

  // Color of the title's background
  final Color backgroundColor;
  // Color of the text "GROUP"
  final Color mainTitleColor;
  // Color of the text "TODO" 
  final Color subTitleColor;

  // Title font size
  final double titleFontSize = AppTextStyles.h1.fontSize;

  SignInTitleSection({this.backgroundColor: AppColors.DarkColor, 
    this.mainTitleColor: Colors.white, this.subTitleColor: AppColors.LightColor});

  @override 
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 24.0),
      color: backgroundColor,
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
                fontSize: titleFontSize,
                fontWeight: FontWeight.w400,
                color: mainTitleColor
              )
            )
          ),
          Container(
            padding: const EdgeInsets.only(left: 4.0),
            child: Text(
              "TODO",
              style: TextStyle(
                fontSize: titleFontSize,
                fontWeight: FontWeight.w400,
                color: subTitleColor
              )
            )
          )
        ],
      ),
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:group_todo/Style/AppColors.dart';

class SignInPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return 
    CupertinoPageScaffold(
      child: Column(
        children: <Widget>[
          Expanded(child: _titleSection),
          Expanded(child: Placeholder())
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
            )
          )
        ),
        Container(
          padding: const EdgeInsets.only(left: 4.0),
          child: Text(
            "TODO",
            style: TextStyle(
              fontSize: 30
            )
          )
        )
      ],
    ),
  );

}
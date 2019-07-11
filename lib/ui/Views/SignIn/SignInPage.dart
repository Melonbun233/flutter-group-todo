import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:group_todo/core/ViewModels/SignInViewModel.dart';
import 'package:group_todo/ui/Views/BaseView.dart';

import 'SignInTextFieldSection.dart';
import 'SignInTitleSection.dart';
import 'SignInButtonSection.dart';

// This is a page widget for sign in page, this widget controlls related sign in data and it's subsections.
// The SignInPage is stateless so that it doesn't need to rebuild the whole page when some
// data are changed. Instead, it only rebuilds its subsections when necessary.
class SignInPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return BaseView<SignInViewModel>(
      builder: (context, model, child) => CupertinoPageScaffold(
        child: Column(
          children: <Widget>[
            // Title Section
            Expanded(flex: 1, child: SignInTitleSection()),
            // Textfield Section
            Expanded(flex: 1, child: SignInTextFieldSection(model)),
            // Button Section
            Expanded(flex: 2, child: SignInButtonSection(model)),
          ],
        )
      )
    );
  }
}
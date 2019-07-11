import 'package:flutter/cupertino.dart';
import 'package:group_todo/core/ViewModels/HomeViewModel.dart';
import 'package:group_todo/ui/Views/BaseView.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // Use WillPopScope to disable swipe to pop
    return BaseView<HomeViewModel>(
      builder: (context, model, child) => WillPopScope(
        // By setting onWillPop returns true, we are disabling swiping to pop,
        // but we still keeps the popping when calling Navigator.pop()
        onWillPop: () async{
          return true;
        },
        child: CupertinoPageScaffold(
          child: CustomScrollView(
            slivers: <Widget>[
              // Navigation Bar
              CupertinoSliverNavigationBar(
                // Users configuration
                leading: Placeholder(),
                largeTitle: Text(
                  "Home"
                ),
              )
            ],
          )
        )
      ),
      
    );
    
    ;
  }

  Widget _buildUserIcon(){
    
  }
}
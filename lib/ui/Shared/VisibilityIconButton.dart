import 'package:flutter/material.dart';

// This class is a widget component of a icon button showing visibility.
// The button will toggle between visible and invisible icons, and it has 
// two callbacks for setting icon visible and invisible. 

class VisibilityIconButton extends StatefulWidget {

  // Two callback functions can be set when toggling the icon button
  final VoidCallback onSetVisible;
  final VoidCallback onSetInvisible;
  final double iconSize;
  final Color color;
  final bool initialVisibility;

  VisibilityIconButton({this.onSetVisible, this.onSetInvisible, 
    this.iconSize: 24.0, this.color: Colors.black, this.initialVisibility: false});

  @override 
  _VisibilityIconButtonState createState() => _VisibilityIconButtonState(initialVisibility);
}

class _VisibilityIconButtonState extends State<VisibilityIconButton> {

  bool _visible;

  // Construct the state with initial visibility
  _VisibilityIconButtonState(this._visible);

  @override
  Widget build(BuildContext context) {
    // User of Material here is because IconButton requires Material to work around
    return Material (
      color: Colors.transparent,
      child: IconButton(
        iconSize: widget.iconSize,
        color: widget.color,
        splashColor: Colors.transparent,
        icon: _visible ? Icon(Icons.visibility) : Icon(Icons.visibility_off),
        onPressed: _onIconButtonPressed
      )
    );
  }

  // Toggle the icon and call callbacks when it's pressed
  _onIconButtonPressed() {
    if (_visible) {
      setState(() {
        _visible = false;
        if (widget.onSetInvisible != null) {
          widget.onSetInvisible();
        }
      });
    } else {
      setState(() {
        _visible = true;
        if (widget.onSetVisible != null) {
          widget.onSetVisible();
        }
      });
    }
  }
}
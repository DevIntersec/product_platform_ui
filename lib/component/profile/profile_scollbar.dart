import 'package:flutter/material.dart';
import 'package:draggable_scrollbar_sliver/draggable_scrollbar_sliver.dart';

class ProfileScrollBar extends StatelessWidget {
  Widget customWidget;
  ProfileScrollBar({this.customWidget});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollbar.rrect(
      child: this.customWidget,
      controller: ScrollController(),
      alwaysVisibleScrollThumb: true,
      backgroundColor: Colors.orange,
      heightScrollThumb: 80.0,
    );
  }
}

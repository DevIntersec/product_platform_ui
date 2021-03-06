import 'package:flutter/material.dart';
import 'package:product_platform_ui/screen/detail_chat_screen.dart';

class ProfileAppbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        "Name",
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontFamily: 'SFProText', color: Colors.black),
      ),
      leading: GestureDetector(
        onTap: () => {}, //gonna edit this again
        child: Image(
          image: AssetImage("assets/icons/Arrow - Left 2_1.png"),
        ),
      ),
      backgroundColor: Colors.grey[200],
      actions: <Widget>[
        Padding(
          padding: EdgeInsets.only(right: 15.0),
          child: GestureDetector(
            onTap: () => Navigator.of(context).pushNamed(ProductChatScreen.tag),
            child: Image(
              image: AssetImage("assets/icons/Send_1.png"),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 15.0),
          child: GestureDetector(
            child: Image(
              image: AssetImage("assets/icons/Notification_1.png"),
            ),
          ),
        ),
      ],
      elevation: 0,
    );
  }
}

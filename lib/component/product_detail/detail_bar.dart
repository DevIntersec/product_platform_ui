import 'package:flutter/material.dart';
import 'package:product_platform_ui/screen/detail_chat_screen.dart';

class DetailBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(50);

  Widget _imageBox(String name) {
    return Image.asset(
      name,
      scale: 2,
    );
  }

  Widget _textDetail(String context) {
    return TextButton(
        onPressed: () => {},
        child: Text(context, style: TextStyle(color: Colors.black87)));
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: _imageBox('assets/icons/Search_0.png'),
      title: Container(
        child: Row(
          children: [
            SizedBox(
              width: 48,
            ),
            _textDetail('Following'),
            _textDetail('Location')
          ],
        ),
      ),
      centerTitle: true,
      actions: [
        // GestureDetector(
        //   onTap: () => Navigator.of(context).pushNamed(ProductChatScreen.tag),
        //   child: _imageBox('assets/icons/Send_0.png'),
        // ),
        GestureDetector(
          onTap: () => {},
          child: _imageBox('assets/icons/Notification_0.png'),
        )
      ],
      backgroundColor: Colors.white,
      elevation: 0,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:product_platform_ui/screen/profile.dart';

class DetailBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: BottomAppBar(
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 40,
              child: IconButton(
                tooltip: 'Send message',
                icon: Image.asset(
                  'assets/icons/home_2.png',
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(width: 70),
            SizedBox(
              width: 60,
              height: 60,
              child: IconButton(
                tooltip: 'Send request',
                icon: Image.asset('assets/icons/up_solid_arrow.png'),
                onPressed: () => {},
              ),
            ),
            SizedBox(width: 70),
            SizedBox(
              width: 40,
              child: IconButton(
                tooltip: 'Call',
                icon: Image.asset('assets/icons/user_2.png'),
                onPressed: () => Navigator.of(context).pushNamed(Profile1.tag),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

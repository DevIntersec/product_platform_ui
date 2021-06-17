import 'package:flutter/material.dart';
import 'package:product_platform_ui/screen/detail_main.dart';
import 'package:product_platform_ui/screen/detail_chat_screen.dart';
import 'package:product_platform_ui/screen/profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    ProductDetailPage.tag: (context) => ProductDetailPage(),
    ProductChatScreen.tag: (context) => ProductChatScreen(),
    Profile1.tag: (context) => Profile1(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'SFProText-Regular',
      ),
      home: Profile1(),
      routes: routes,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:product_platform_ui/screen/detail_main.dart';
import 'package:product_platform_ui/screen/profile.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    ProductDetailPage.tag: (context) => ProductDetailPage(),
    Profile1.tag: (context) => Profile1(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Platform UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'SFProText-Regular',
      ),
      home: Profile1(),
      routes: routes,
      builder: (BuildContext context, Widget child) {
        return FlutterSmartDialog(child: child);
      },
    );
  }
}

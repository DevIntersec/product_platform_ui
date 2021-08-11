import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:product_platform_ui/component/product_detail/detail_chat.dart';
import 'package:product_platform_ui/component/product_detail/detail_confirm_bottom_bar.dart';

class ProductChatScreen extends StatefulWidget {
  @override
  ProductChatScreenState createState() => ProductChatScreenState();
}

class ProductChatScreenState extends State<ProductChatScreen> {
  static var li = [
    DetailChatSender('I love your suit'),
    DetailChatSender('Can I join your?'),
    DetailChatReceiver('Yes, you can')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => {SmartDialog.dismiss()},
          child: Image.asset('assets/icons/Arrow - Left 2_1.png'),
        ),
        title: DetailChatTitle('Sahachan T.'),
        actions: [
          Image.asset('assets/icons/Notification_1.png'),
          Image.asset('assets/icons/tel_1.png')
        ],
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ListView(
          children: [for (var i in li) i],
        ),
      ),
      bottomNavigationBar: DetailConfirmBottomBar(),
    );
  }
}

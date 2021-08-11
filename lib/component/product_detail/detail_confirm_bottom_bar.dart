import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:product_platform_ui/component/product_detail/detail_confirm_dialog.dart';

class DetailConfirmBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            tooltip: 'Send message',
            icon: Image.asset('assets/icons/Send_1.png'),
            onPressed: () {},
          ),
          SizedBox(
            width: 20,
          ),
          SizedBox(
            width: 60,
            height: 60,
            child: IconButton(
              tooltip: 'Send request',
              icon: Image.asset('assets/icons/up-arrow-1.png'),
              onPressed: () => {
                SmartDialog.showLoading(
                  widget: SingleChildScrollView(
                    child: ListBody(
                      children: [DetailConfirm()],
                    ),
                  ),
                ),
              },
            ),
          ),
          SizedBox(
            width: 20,
          ),
          IconButton(
            tooltip: 'Call',
            icon: Image.asset('assets/icons/tel_3.png'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

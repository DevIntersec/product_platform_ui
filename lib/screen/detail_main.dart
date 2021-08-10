import 'package:flutter/material.dart';
import 'package:product_platform_ui/component/product_detail/detail_bar.dart';
import 'package:product_platform_ui/component/product_detail/detail_item.dart';
import 'package:product_platform_ui/component/product_detail/detail_info.dart';
import 'package:product_platform_ui/component/product_detail/detail_price.dart';
import 'package:product_platform_ui/component/product_detail/detail_bottom_bar.dart';

class ProductDetailPage extends StatefulWidget {
  static String tag = 'ProductdetaiPage';
  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  var product_platform_ui = Container(
    padding: EdgeInsets.all(25.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            Container(
              child: DetailItem(),
            ),
            Container(
              width: 50,
              height: 50,
              child: Image.asset('assets/icons/Arrow - Left 2_0.png'),
            ),
            Container(
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 80,
                    ),
                    DetailPrice(isBook: true),
                    DetailPrice(isBook: true),
                    DetailPrice(isBook: false),
                  ],
                ),
              ),
            ),
          ],
        ),
        DetailInfo(),
        // Container(
        //   child: GridView.count(
        //     crossAxisCount: 2,
        //     children: List.generate(
        //       20,
        //       (index) {
        //         return Text('something');
        //       },
        //     ),
        //   ),
        // ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DetailBar(),
      backgroundColor: Colors.white,
      body: ListView(
        children: [product_platform_ui],
      ),
      bottomNavigationBar: DetailBottomBar(),
    );
  }
}

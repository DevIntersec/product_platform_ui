import 'package:flutter/material.dart';
import 'package:product_platform_ui/screen/detail_main.dart';
import 'package:product_platform_ui/util/history_images_json.dart';
import 'package:product_platform_ui/util/save_history.dart';

class ProfileHistory extends StatelessWidget {
  Size size;
  int index;
  ProfileHistory({this.size, this.index});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(ProductDetailPage.tag),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 22,
            ),
            Text(
              'SAVE',
              textAlign: TextAlign.left,
              //overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'SFProText',
                  color: Colors.black),
            ),
            Row(children: [
              SizedBox(height: 30),
              Text(
                save[index]['amount'].toString(),
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.w500),
              ),
              Text(
                "THB",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              SizedBox(width: 30),
              Text(
                save[index]['time'].toString(),
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
              ),
              Text(
                "Min",
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
              ),
            ]),
            Row(
              children: [
                SizedBox(
                  height: 30,
                  width: 30,
                ),
                Text(
                  save[index]['distance'].toString(),
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
                ),
                Text(
                  "Mile",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
                ),
                SizedBox(width: 30),
                Text(
                  save[index]['dateTime'].toString(),
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ],
        ),
        padding: EdgeInsets.only(
          left: 20.0,
          right: 20.0,
        ),
        margin: EdgeInsets.only(
          left: 20.0,
          right: 20.0,
        ),
        height: 150,
        width: (size.width - 6) * 0.6,
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              alignment: Alignment.center,
              image: AssetImage(images[index]),
              fit: BoxFit.cover,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.7),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 4), // changes position of shadow
              ),
            ]),
      ),
    );
  }
}

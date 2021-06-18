import 'package:flutter/material.dart';
import 'package:product_platform_ui/util/activity_history.dart';
import 'package:product_platform_ui/util/save_history.dart';

class ProfileActivity extends StatelessWidget {
  Size size;
  int index;
  ProfileActivity({this.size, this.index});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 20.0,
        right: 20.0,
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.shopping_bag_outlined),
            Text(
              activity[index]['activity'],
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'SFProText',
                  color: Colors.black),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              activity[index]['address'],
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'SFProText',
                  color: Colors.black),
            ),
            Row(children: [
              SizedBox(width: 30),
              Text(
                save[index]['time'],
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'SFProText',
                    color: Colors.grey),
                textAlign: TextAlign.right,
              ),
              SizedBox(width: 5),
              Text(
                "Min",
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'SFProText',
                    color: Colors.grey),
                textAlign: TextAlign.right,
              ),
            ]),
            Row(children: [
              SizedBox(width: 30),
              Text(
                save[index]['dateTime'],
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'SFProText',
                    color: Colors.grey),
                textAlign: TextAlign.right,
              ),
            ]),
            Row(children: [
              SizedBox(width: 30),
              Text(
                activity[index]['Joiner'],
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'SFProText',
                    color: Colors.black),
              ),
              SizedBox(width: 5),
              Text(
                "Joiner",
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'SFProText',
                    color: Colors.black),
              ),
            ]),
            Icon(Icons.arrow_downward_rounded),
          ]),
      height: 150,
      width: 300,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey[350],
            offset: const Offset(
              5.0,
              5.0,
            ),
            blurRadius: 10.0,
            spreadRadius: 2.0,
          ), //BoxShadow
          BoxShadow(
            color: Colors.white,
            offset: const Offset(0.0, 0.0),
            blurRadius: 0.0,
            spreadRadius: 0.0,
          ), //BoxShadow
        ],
      ),
    );
  }
}

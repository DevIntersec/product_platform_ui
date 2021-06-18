import 'package:flutter/material.dart';
import 'package:product_platform_ui/component/product_detail/detail_bottom_bar.dart';
import 'package:product_platform_ui/component/profile/profile_activity.dart';
import 'package:product_platform_ui/component/profile/profile_appbar.dart';
import 'package:product_platform_ui/component/profile/profile_body.dart';
import 'package:product_platform_ui/component/profile/profile_history.dart';
import 'package:product_platform_ui/component/profile/profile_scollbar.dart';
import 'package:product_platform_ui/util/activity_history.dart';
import 'package:product_platform_ui/util/save_history.dart';

class Profile1 extends StatefulWidget {
  static String tag = 'Profile1';
  @override
  _Profile1State createState() => _Profile1State();
}

class _Profile1State extends State<Profile1> {
  int indexPage = 0;
  Widget getHistory(size) {
    return Wrap(
      alignment: WrapAlignment.end,
      direction: Axis.vertical,
      spacing: 40,
      runSpacing: 20,
      children: List.generate(
        save.length,
        (index) {
          return ProfileHistory(
            size: size,
            index: index,
          );
        },
      ),
    );
  }

  Widget getActivity(size) {
    return Wrap(
      alignment: WrapAlignment.end,
      direction: Axis.vertical,
      spacing: 40,
      runSpacing: 20,
      children: List.generate(
        activity.length,
        (index) {
          return ProfileActivity(size: size, index: index);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: ProfileAppbar(),
      body: ProfileScrollBar(
        customWidget: ProfileBody(
          size: size,
          history: getHistory(size),
          activity: getActivity(size),
        ),
      ),
      bottomNavigationBar: DetailBottomBar(),
    );
  }
}
/*   var sidebar = List<FloatingActionRowChild>();
    sidebar.add(
      FloatingActionRowButton(
        icon: Icon(Icons.shopping_bag_rounded),
        color: Colors.black,
        onTap: () {},
      ),
    );
    sidebar.add(
      FloatingActionRowDivider(),
    );
    sidebar.add(
      FloatingActionRowButton(
        icon: Icon(Icons.file_copy_rounded),
        color: Colors.black,
        onTap: () {},
      ),
    ); */
  
  /* floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.orange,
        shape: RoundedRectangleBorder(),
        label: Text('Add Note'),
        onPressed: () {
          var children = List<FloatingActionRowChild>();
          children.add(
            FloatingActionRowButton(
              icon: Icon(Icons.shopping_bag),
              color: Colors.black,
              onTap: () {},
            ),
          );
          children.add(
            FloatingActionRowDivider(),
          );
          children.add(
            FloatingActionRowButton(
              icon: Icon(Icons.file_copy),
              color: Colors.black,
              onTap: () {},
            ),
          );
          print('FloatingActionButton clicked');
        },
      ), */

      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // floatingActionButton: FloatingActionRow(
      //   children: children,
      //   color: Colors.white,
      //   elevation: 6,
      // ),
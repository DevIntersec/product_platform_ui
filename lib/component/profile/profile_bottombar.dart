import 'package:floating_action_row/floating_action_row.dart';
import 'package:flutter/material.dart';

class ProfileBottombar extends StatelessWidget {
  var children = List<FloatingActionRowChild>();

  @override
  Widget build(BuildContext context) {
    children.add(
      FloatingActionRowButton(
        icon: Icon(Icons.home_outlined),
        color: Colors.black,
        onTap: () {},
      ),
    );
    children.add(
      FloatingActionRowDivider(),
    );
    children.add(
      FloatingActionRowButton(
        icon: Icon(Icons.arrow_drop_down_circle_sharp),
        color: Colors.black,
        onTap: () {},
      ),
    );
    children.add(
      FloatingActionRowDivider(),
    );
    children.add(
      FloatingActionRowButton(
        icon: Icon(Icons.account_circle_outlined),
        color: Colors.black,
        onTap: () {},
      ),
    );
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        elevation: 4.0,
        icon: const Icon(Icons.add),
        label: const Text('Add a task'),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(),
    );
  }
}

import 'package:dynamic_listview_physics/widgets/widgets.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List of items')),
      body: CustomListView(),
      floatingActionButton: FloatingButtons(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

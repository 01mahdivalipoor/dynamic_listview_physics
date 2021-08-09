import 'package:dynamic_listview_physics/models/item_counter.dart';
import 'package:dynamic_listview_physics/screens/home.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ItemCounterProvider>(
      create: (_) => ItemCounterProvider(),
      child: MaterialApp(
        title: 'Flutter Project',
        home: MyHomePage(),
        theme: ThemeData(
          primaryColor: Color(0xFF16558F),
        ),
      ),
    );
  }
}

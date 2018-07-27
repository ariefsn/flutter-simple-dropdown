import 'package:flutter/material.dart';
import 'package:simple_dropdown/views/home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Dropdown',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Home(),
    );
  }
}

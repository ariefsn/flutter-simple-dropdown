import 'package:flutter/material.dart';
import 'package:simple_dropdown/components/simple_dropdown.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List items  = [
    {"value": "A", "display": "Ayik"},
    {"value": "B", "display": "Bobo"},
    {"value": "C", "display": "Chacha"},
    {"value": "D", "display": "Damen"},
    {"value": "E", "display": "Euy"},
  ];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        child: new SimpleDropdown(
          items: items,
        ),
      ),
    );
  }
}
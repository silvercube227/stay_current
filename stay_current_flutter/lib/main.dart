import 'package:flutter/material.dart';
import 'package:stay_current_flutter/ContentView.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stay Current',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ContentView(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:stay_current_flutter/ContentView.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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


import 'package:flutter/material.dart';
import 'package:deimox_apli/screens/pause_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pausas Activas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PauseScreen(),
    );
  }
}

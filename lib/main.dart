import 'package:flutter/material.dart';
import 'package:food_master/src/ui/debug/debug_screen.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: Colors.green,
      accentColor: Colors.greenAccent,
      primarySwatch: Colors.green,
    ),
    home: DebugScreen(),
  ));
}

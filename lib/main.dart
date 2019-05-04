import 'package:flutter/material.dart';
import 'package:food_master/src/ui/home/home_screen.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: Colors.lightGreen,
      accentColor: Colors.lightGreenAccent,
      primarySwatch: Colors.lightGreen,
    ),
    home: HomeScreen(),
  ));
}

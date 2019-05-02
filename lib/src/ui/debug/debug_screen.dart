import 'package:flutter/material.dart';
import 'package:food_master/src/repository/repository.dart';

class DebugScreen extends StatefulWidget {
  @override
  _DebugScreenState createState() => _DebugScreenState();
}

class _DebugScreenState extends State<DebugScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () {
          final repository = Repository();
          var response = repository.getLatestMeal();
          response.then((value) {
            print("value: $value");
          });
        },
        child: Text("Tap Me"),
      ),
    );
  }
}

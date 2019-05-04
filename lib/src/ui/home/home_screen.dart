import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var paddingBottomScreen = 0.0;

  @override
  Widget build(BuildContext context) {
    initMediaQuery(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Food Master"),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: 16.0,
            top: 16.0,
            bottom: paddingBottomScreen + 16.0,
            right: 16.0,
          ),
          child: ListView(
            children: <Widget>[
              _buildWidgetSearchRecipe(),
            ],
          ),
        ),
      ),
    );
  }

  void initMediaQuery(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    paddingBottomScreen = mediaQuery.padding.bottom;
  }

  Widget _buildWidgetSearchRecipe() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      child: Card(
        elevation: 8.0,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(8.0),
            ),
            border: Border.all(color: Colors.grey),
          ),
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Icon(
                Icons.search,
                color: Colors.grey,
              ),
              SizedBox(
                width: 8.0,
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                    hintText: "Search recipe...",
                  ),
                  textInputAction: TextInputAction.search,
                  onSubmitted: (value) {
                    // TODO: do something in here
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

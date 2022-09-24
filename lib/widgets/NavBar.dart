import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rid_use/screens/welcome/components/welcome_body.dart';

Widget myAppBar(String title) {
  return AppBar(
    backgroundColor: Color.fromRGBO(156, 204, 101, 1),
    //background color of Appbar to green
    toolbarHeight: 200,
    title: Text(title),
    titleSpacing: 0,
    actions: <Widget>[
      IconButton(
        iconSize: 50,
        icon: Icon(Icons.dashboard),
        onPressed: () {
          _onSearchButtonPressed();
        },
      ),
      IconButton(
        iconSize: 50,
        icon: Icon(Icons.inventory),
        onPressed: () {},
      ),
      IconButton(
        iconSize: 50,
        icon: Icon(Icons.insights),
        onPressed: () {},
      ),
      IconButton(
        iconSize: 50,
        icon: Icon(Icons.support),
        onPressed: () {},
      ),
    ],
  );
}

void _onSearchButtonPressed() {
  print("search button clicked");
}

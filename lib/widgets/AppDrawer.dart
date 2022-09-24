import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget myDrawer() {
  return Drawer(
    child: SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.only(top: 50),
            child: Column(
              children: <Widget>[
                ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Profile"),
                    onTap: () {
                      // Home button action
                    }),

                ListTile(
                    leading: Icon(Icons.settings),
                    title: Text("Settings"),
                    onTap: () {
                      // My Pfofile button action
                    }),

                ListTile(
                    leading: Icon(Icons.question_answer),
                    title: Text("FAQ"),
                    onTap: () {
                      // Find peoples button action
                    })

                //add more drawer menu here
              ],
            ))),
  );
}

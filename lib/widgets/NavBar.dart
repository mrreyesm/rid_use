import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rid_use/screens/insights/insights.dart';
import 'package:rid_use/screens/main_dashboard/main_dashboard.dart';
import 'package:rid_use/screens/welcome/components/welcome_body.dart';
import 'package:rid_use/screens/welcome/welcome.dart';

Widget myAppBar(String pageTitle, BuildContext context) {
  return AppBar(
    backgroundColor: Color.fromARGB(0, 1, 93, 103),
    toolbarHeight: 200,
    title: Text(pageTitle),
    titleSpacing: 0,
    actions: <Widget>[
      IconButton(
        iconSize: 50,
        icon: Icon(Icons.dashboard),
        onPressed: () {
          _navigateToDashboard(context);
        },
      ),
      IconButton(
        iconSize: 50,
        icon: Icon(Icons.inventory),
        onPressed: () {
          _navigateToInventory(context);
        },
      ),
      IconButton(
        iconSize: 50,
        icon: Icon(Icons.insights),
        onPressed: () {
          _navigateToInsights(context);
        },
      ),
      IconButton(
        iconSize: 50,
        icon: Icon(Icons.support),
        onPressed: () {
          _navigateToSupport(context);
        },
      ),
    ],
  );
}

void _navigateToDashboard(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const Welcome()));
}

void _navigateToInventory(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const MainDashboard()));
}

void _navigateToInsights(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const Insights()));
}

void _navigateToSupport(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const WelcomeBody()));
}

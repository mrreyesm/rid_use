import 'package:flutter/material.dart';
import 'package:rid_use/screens/main_dashboard/components/main_dashboard_background.dart';

class MainDashboardBody extends StatelessWidget {
  const MainDashboardBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
          length: 4,
          child: Scaffold(
            drawer: Drawer(
              child: ListView(
                children: <Widget>[
                  DrawerHeader(
                    child: Text(
                      "Drawer Text",
                      textAlign: TextAlign.justify,
                      textScaleFactor: 2.0,
                    ),
                    decoration: BoxDecoration(color: Colors.green),
                  ),
                  ListTile(
                    title: Text("First"),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text("Second"),
                    onTap: () {},
                  )
                ],
              ),
            ),
            appBar: AppBar(
              title: Text("Rid-Use"),
              bottom: const TabBar(tabs: [
                Tab(
                  text: "Test",
                ),
                Tab(
                  text: "Test 2",
                ),
                Tab(
                  text: "Test 3",
                ),
                Tab(
                  text: "Tab 4",
                )
              ]),
            ),
          )),
    );
  }
}

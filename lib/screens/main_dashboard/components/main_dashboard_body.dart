import 'package:flutter/material.dart';
import 'package:rid_use/screens/main_dashboard/components/main_dashboard_background.dart';
import 'package:rid_use/screens/welcome/welcome.dart';

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
                    child: const Text(
                      "Drawer Text",
                      textAlign: TextAlign.justify,
                      textScaleFactor: 2.0,
                    ),
                    decoration: BoxDecoration(color: Colors.green),
                  ),
                  ListTile(
                    title: const Text("Profile"),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text("Settings"),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text("FAQs"),
                    onTap: () {},
                  )
                ],
              ),
            ),
            appBar: AppBar(
              leadingWidth: 100,
              title: Container(
                height: 40,
                width: 40,
                child: Image.asset("assets/images/mainLogoBlack.png"),
              ),
              bottom: TabBar(tabs: [
                Tab(
                  iconMargin: const EdgeInsets.only(
                      left: 40, right: 40, bottom: 20, top: 20),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      child: Icon(Icons.dashboard_customize_outlined),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Welcome()),
                        );
                      },
                    ),
                  ),
                ),
                Tab(
                  icon: Icon(Icons.inventory),
                  // text: "Inventory",
                ),
                Tab(
                  icon: Icon(Icons.insights),
                  // text: "Insights",
                ),
                Tab(
                  icon: Icon(Icons.contact_support),
                  // text: "Support",
                )
              ]),
            ),
            body: TabBarView(children: [
              Container(
                alignment: Alignment.center,
                child: const Text("Dashboard"),
              ),
              Container(
                alignment: Alignment.center,
                child: const Text("Inventory"),
              ),
              Container(
                alignment: Alignment.center,
                child: const Text("Insights"),
              ),
              Container(
                alignment: Alignment.center,
                child: const Text("Support"),
              ),
            ]),
          )),
    );
  }
}

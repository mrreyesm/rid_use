import 'package:flutter/material.dart';
import 'package:rid_use/screens/main_dashboard/main_dashboard.dart';
import 'package:rid_use/screens/welcome/components/welcome_background.dart';
import 'package:rid_use/screens/login/components/login_body.dart';
import 'package:rid_use/widgets/AppDrawer.dart';
import 'package:rid_use/widgets/NavBar.dart';

class WelcomeBody extends StatelessWidget {
  const WelcomeBody({
    Key? key,
  }) : super(key: key);

  @override
    Size get preferredSize => const Size.fromHeight(100.0);
    Widget build(BuildContext context) {
      return WelcomeBackground(
          child: Scaffold(
        backgroundColor: Colors.green,
        appBar: PreferredSize(
          preferredSize: preferredSize,
          child: myAppBar("Dashboard"),
        ),
        drawer: myDrawer(),
      ));
    }
}
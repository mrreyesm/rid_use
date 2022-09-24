import 'package:flutter/material.dart';
import 'package:rid_use/screens/main_dashboard/main_dashboard.dart';
import 'package:rid_use/screens/welcome/components/welcome_background.dart';

class WelcomeBody extends StatelessWidget {
  const WelcomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WelcomeBackground(
        child: InkWell(
        child: TextButton(
          child: Text("Test"),
          onPressed: () {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MainDashboard()),);},
        ),
      )
    );
  }
  }
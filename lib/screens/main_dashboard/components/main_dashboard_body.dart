import 'package:flutter/material.dart';
import 'package:rid_use/screens/main_dashboard/components/main_dashboard_background.dart';

class MainDashboardBody extends StatelessWidget {
  const MainDashboardBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainDashboardBackground(
        child: InkWell(
        child: TextButton(
          child: Text("Main Dashboard"),
          style: TextButton.styleFrom(backgroundColor: Colors.black),
          onPressed: () {},
        ),
      )
    );
  }
  }
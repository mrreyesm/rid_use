import 'package:flutter/material.dart';
import 'package:rid_use/screens/main_dashboard/components/main_dashboard_body.dart';

class MainDashboard extends StatelessWidget {
  const MainDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MainDashboardBody(),
    );
  }
}
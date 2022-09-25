import 'package:flutter/material.dart';
import 'package:rid_use/screens/insights/components/insights_body.dart';
import 'package:rid_use/widgets/NavBar.dart';

class Insights extends StatelessWidget {
  const Insights({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InsightsBody(),
    );
  }
}

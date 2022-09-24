import 'package:flutter/material.dart';
import 'package:rid_use/screens/insights/components/insights_body.dart';

class Insights extends StatelessWidget {
  const Insights({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: InsightsBody(),
    );
  }
}

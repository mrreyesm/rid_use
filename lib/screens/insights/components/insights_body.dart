import 'package:flutter/material.dart';
import 'package:rid_use/screens/insights/components/insights_background.dart';
import 'package:rid_use/screens/welcome/components/welcome_background.dart';
import 'package:rid_use/widgets/AppDrawer.dart';
import 'package:rid_use/widgets/NavBar.dart';

class InsightsBody extends StatelessWidget {
  const InsightsBody({
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(100.0);
  Widget build(BuildContext context) {
    return InsightsBackground(
        child: Scaffold(
      backgroundColor: Colors.green,
      appBar: PreferredSize(
          preferredSize: preferredSize, child: myAppBar("Insights", context)),
      drawer: myDrawer(),
    ));
  }
}

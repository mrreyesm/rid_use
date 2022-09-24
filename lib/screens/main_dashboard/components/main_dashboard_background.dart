import 'package:flutter/material.dart';

class MainDashboardBackground extends StatelessWidget {
  final Widget child;
  const MainDashboardBackground({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Your Dashboard"),
      ),
    ));
  }
}

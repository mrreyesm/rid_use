import 'package:flutter/material.dart';
import 'package:rid_use/screens/welcome/components/welcome_background.dart';
import 'package:rid_use/widgets/AppDrawer.dart';
import 'package:rid_use/widgets/NavBar.dart';

class WelcomeBody extends StatelessWidget {
  const WelcomeBody({
    Key? key,
  }) : super(key: key);

  // @override
  // Widget build(BuildContext context) {
  //   return WelcomeBackground(
  //       child: InkWell(
  //       child: TextButton(
  //         child: Text("Test"),
  //         onPressed: () {Navigator.push(
  //             context,
  //             MaterialPageRoute(builder: (context) => const MainDashboard()),);},
  //       ),
  //     )
  //   );
  // }
  // }

  @override
  Size get preferredSize => const Size.fromHeight(100.0);
  Widget build(BuildContext context) {
    return WelcomeBackground(
        child: Scaffold(
      backgroundColor: Colors.green,
      appBar: PreferredSize(
          preferredSize: preferredSize, child: myAppBar("Dashboard", context)),
      drawer: myDrawer(),
    ));
  }
}

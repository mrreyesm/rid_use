import 'package:flutter/material.dart';
import 'package:rid_use/screens/welcome/components/welcome_body.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: WelcomeBody(),
    );
  }
}
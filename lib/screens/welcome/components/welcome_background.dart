import 'package:flutter/material.dart';

class WelcomeBackground extends StatelessWidget {
  final Widget child;
  const WelcomeBackground({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              "assets/images/main2_logo.png",
              width: size.width,
              height: size.height,
              fit: BoxFit.fitHeight,
            ),
          ),
          child,
        ],
      ),
    );
  }
}

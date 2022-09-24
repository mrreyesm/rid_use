import 'package:flutter/material.dart';

class LoginBackground extends StatelessWidget {
  final Widget child;
  const LoginBackground({
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
            top: 50,
            right: 10,
            child: Image.asset(
              "assets/images/main_logo.png",
              width: size.width * 0.10,
              height: size.height * 0.10,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
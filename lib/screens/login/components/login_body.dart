import 'package:flutter/material.dart';
import 'package:rid_use/screens/login/components/login_background.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
      Size size = MediaQuery.of(context).size;
      return  LoginBackground(
      child: ConstrainedBox(constraints: const BoxConstraints.tightFor(width: 350),
      child: Column  (
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "LOGIN",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height * 0.03),
        ],
      )
    )
    );
  }
}

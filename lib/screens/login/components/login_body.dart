import 'package:flutter/material.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
      Size size = MediaQuery.of(context).size;
      return MaterialApp(
        home: Scaffold(
          body: Container(
            width: double.infinity,
            height: size.height,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "LOGIN",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: size.height * 0.03),
                      Image.asset(
                              "images/logo-black.png",
                              width: size.width * 0.5,
                              height: size.height * 0.5,
                              fit: BoxFit.fitHeight,
                            ),
                      SizedBox(height: size.height * 0.03),
                      TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: "Enter your Email",
                          border: InputBorder.none,
                        ),
                        onChanged: (value) {},
                      ),
                      TextField(
                        textAlign: TextAlign.center,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter your Password",
                          border: InputBorder.none,
                        ),
                        onChanged: (value) {},
                      ),
                   TextButton(
                        onPressed: () {},
                        child: Text("Login"),
                      ),
                      SizedBox(height: size.height * 0.03),
                      TextButton(
                        onPressed: () {},
                        child: Text("Forgot Password"),
                      ),
                      SizedBox(height: size.height * 0.03),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}

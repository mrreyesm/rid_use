import 'package:flutter/material.dart';
import 'package:rid_use/screens/welcome/welcome.dart';

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
                      SizedBox(height: size.height * 0.03),
                      Image.asset(
                              "images/logo-black.png",
                              width: size.width * 0.5,
                              height: size.height * 0.5,
                              fit: BoxFit.fitHeight,
                            ),
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
                        onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context) => const Welcome()),);},
                        child: Text("Login"),
                      ),
                      SizedBox(height: size.height * 0.03),
                      TextButton(
                        onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context) => const Welcome()),);},
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

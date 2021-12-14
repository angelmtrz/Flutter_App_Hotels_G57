// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    goHome();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  goHome() async {
    await Future.delayed(Duration(seconds: 5), () {
      Navigator.pushNamed(context, "home");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.only(
          top: 50.0,
          left: 20.0,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(255, 55, 40, 1.0),
              Color.fromRGBO(255, 100, 34, 1.0),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome",
              style: Theme.of(context).textTheme.headline4?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Bakbak",
                  ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "You're a new user? Join us now!",
              style: Theme.of(context).textTheme.headline6?.copyWith(
                    color: Colors.white,
                    fontFamily: "Rubik",
                  ),
            ),
            //SignUpButton
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                top: 30.0,
                right: 20.0,
              ),
              padding: EdgeInsets.only(
                top: 20,
                bottom: 20,
                left: 40,
                right: 40,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(40)),
                color: Color.fromRGBO(255, 100, 34, 1.0),
              ),
              child: Text(
                "SIGN UP",
                style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Bakbak",
                      letterSpacing: 3.5,
                    ),
              ),
            ),
            //formLogin
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                top: 40.0,
                right: 20.0,
              ),
              padding: EdgeInsets.only(
                top: 20.0,
                bottom: 20.0,
                left: 10.0,
                right: 10.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Username",
                    style: TextStyle(
                      fontFamily: "Rubik",
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(
                      top: 40.0,
                      bottom: 20.0,
                    ),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.white,
                          width: 2.0,
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Enter your username",
                          style: TextStyle(
                            fontFamily: "Rubik",
                            fontSize: 18,
                            color: Colors.white70,
                          ),
                        ),
                        Icon(
                          Icons.account_circle,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    "Password",
                    style: TextStyle(
                      fontFamily: "Rubik",
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(
                      top: 40.0,
                      bottom: 20.0,
                    ),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.white,
                          width: 2.0,
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Enter your password",
                          style: TextStyle(
                            fontFamily: "Rubik",
                            fontSize: 18,
                            color: Colors.white70,
                          ),
                        ),
                        Icon(
                          Icons.vpn_key_rounded,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //LoginButton
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                top: 50.0,
                right: 20.0,
              ),
              padding: EdgeInsets.only(
                top: 20,
                bottom: 20,
                left: 40,
                right: 40,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  border: Border.all(
                    color: Colors.white,
                    width: 3.0,
                    style: BorderStyle.solid,
                  )),
              child: Text(
                "LOG IN",
                style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Bakbak",
                      letterSpacing: 3.5,
                    ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.only(
                top: 50.0,
                left: 180.0,
                right: 180.0,
                bottom: 20.0,
              ),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                color: Colors.white30,
              ),
              child: Icon(
                Icons.fingerprint,
                size: 50,
                color: Colors.white,
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                "Touch Login",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 22,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

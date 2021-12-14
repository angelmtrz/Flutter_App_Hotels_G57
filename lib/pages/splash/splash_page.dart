// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    goLogin();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  goLogin() async {
    await Future.delayed(Duration(seconds: 3), () {
      Navigator.pushNamed(context, "login");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
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
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "H",
              style: Theme.of(context).textTheme.headline1?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Lobster",
                  ),
            ),
            Text(
              "HOTELES APP",
              style: Theme.of(context).textTheme.headline4?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Bakbak",
                  ),
            ),
            Text(
              "Reservalo ahora!",
              style: Theme.of(context).textTheme.headline6?.copyWith(
                    color: Colors.white,
                    fontFamily: "Bakbak",
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

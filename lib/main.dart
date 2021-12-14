// ignore_for_file: prefer_const_constructors

import 'package:app_reserva_hoteles/pages/home/home_page.dart';
import 'package:app_reserva_hoteles/pages/hotels/hotel_details.dart';
import 'package:app_reserva_hoteles/pages/login/login_page.dart';
import 'package:app_reserva_hoteles/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Rubik'),
      initialRoute: "/",
      routes: {
        "/": (context) => SplashPage(),
        "login": (context) => LoginPage(),
        "home": (context) => HomePage(),
        "details": (context) => HotelDetailsPage(),
      },
    );
  }
}

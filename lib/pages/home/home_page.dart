// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:app_reserva_hoteles/pages/home/widgets/card_detalle.dart';
import 'package:app_reserva_hoteles/pages/home/widgets/card_imagen.dart';
import 'package:app_reserva_hoteles/pages/home/widgets/card_precio.dart';
import 'package:app_reserva_hoteles/pages/home/widgets/search.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    goDetails();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  goDetails() async {
    await Future.delayed(Duration(seconds: 5), () {
      Navigator.pushNamed(context, "details");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: Icon(Icons.format_align_left),
          elevation: 0.0,
          backgroundColor: Color.fromRGBO(255, 55, 40, 1.0),
          centerTitle: true,
          title: Text(
            "BEST DEALS",
            style: Theme.of(context).textTheme.headline5?.copyWith(
                  color: Colors.white,
                  fontFamily: "Bakbak",
                ),
          ),
        ),
        body: Stack(
          children: [
            //Search()
            Positioned(
              top: 0.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                padding: EdgeInsets.only(top: 5.0, left: 30.0, right: 30.0),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 55, 40, 1.0),
                ),
                child: Search(),
              ),
            ),
            //CardImagen()
            Positioned(
              top: 80.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                height: 200,
                width: 400,
                padding: EdgeInsets.only(top: 25.0, left: 30.0, right: 30.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                  color: Colors.white,
                ),
                child: CardImagen(),
              ),
            ),
            //CardDetails()
            Positioned(
              top: 305.0,
              left: 30.0,
              right: 30.0,
              child: CardDetails(),
            ),
            //CardPrecio()
            Positioned(
              top: 240.0,
              left: 150.0,
              right: 150.0,
              child: CardPrecio(),
            ),
            //Textos Extras
            Positioned(
              top: 120.0,
              left: 40.0,
              child: Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  color: Colors.black26,
                ),
                child: Text(
                  "Breakfast",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 120.0,
              left: 140.0,
              child: Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  color: Colors.black26,
                ),
                child: Text(
                  "Late Check-in",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            //CardImagen()
            Positioned(
              top: 450.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                height: 200,
                width: 400,
                padding: EdgeInsets.only(top: 25.0, left: 30.0, right: 30.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                  color: Colors.white,
                ),
                child: CardImagen(),
              ),
            ),
            //CardDetails()
            Positioned(
              top: 675.0,
              left: 30.0,
              right: 30.0,
              child: CardDetails(),
            ),
            //CardPrecio()
            Positioned(
              top: 610.0,
              left: 150.0,
              right: 150.0,
              child: CardPrecio(),
            ),
            //Textos Extras
            Positioned(
              top: 490.0,
              left: 40.0,
              child: Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  color: Colors.black26,
                ),
                child: Text(
                  "Breakfast",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 490.0,
              left: 140.0,
              child: Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  color: Colors.black26,
                ),
                child: Text(
                  "Late Check-in",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}

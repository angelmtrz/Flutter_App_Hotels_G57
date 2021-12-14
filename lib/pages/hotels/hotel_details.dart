// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:app_reserva_hoteles/pages/home/widgets/card_detalle.dart';
import 'package:app_reserva_hoteles/pages/home/widgets/card_imagen.dart';
import 'package:app_reserva_hoteles/pages/home/widgets/card_precio.dart';
import 'package:flutter/material.dart';

class HotelDetailsPage extends StatefulWidget {
  const HotelDetailsPage({Key? key}) : super(key: key);

  @override
  State<HotelDetailsPage> createState() => _HotelDetailsPageState();
}

class _HotelDetailsPageState extends State<HotelDetailsPage> {
  @override
  void initState() {
    goSplash();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  goSplash() async {
    await Future.delayed(Duration(seconds: 5), () {
      Navigator.pushNamed(context, "/");
    });
  }

  @override
  Widget build(BuildContext context) {
    String textoDetalles =
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum";
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              height: 450,
              width: MediaQuery.of(context).size.width * 1.0,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: CardImagen(),
            ),
          ),
          Positioned(
            top: 470.0,
            left: 30.0,
            right: 30.0,
            child: CardDetails(),
          ),
          //CardPrecio()
          Positioned(
            top: 390.0,
            left: 150.0,
            right: 150.0,
            child: CardPrecio(),
          ),
          //Textos Extras
          Positioned(
            top: 30.0,
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
            top: 30.0,
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
          //tag icon
          Positioned(
            top: 30.0,
            left: 400.0,
            child: Icon(
              Icons.bookmark,
              color: Colors.red,
              size: 30,
            ),
          ),
          //arrow Back
          Positioned(
            top: 80.0,
            left: 20.0,
            child: Icon(
              Icons.arrow_drop_down_circle_rounded,
              color: Colors.red,
              size: 50,
            ),
          ),
          //dots
          Positioned(
            top: 350.0,
            left: 190.0,
            child: Row(
              children: [
                Icon(
                  Icons.lens,
                  color: Colors.red,
                  size: 15,
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.lens_outlined,
                  color: Colors.white,
                  size: 15,
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.lens_outlined,
                  color: Colors.white,
                  size: 15,
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.lens_outlined,
                  color: Colors.white,
                  size: 15,
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.lens_outlined,
                  color: Colors.white,
                  size: 15,
                ),
              ],
            ),
          ),
          Positioned(
            top: 620.0,
            left: 30.0,
            right: 30.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                5.0,
              ),
              child: Container(
                padding: EdgeInsets.only(top: 10.0, bottom: 5.0),
                margin: EdgeInsets.only(
                  bottom: 5.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(
                        0.0,
                        1.0,
                      ),
                      blurRadius: 5.0,
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Description",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      textoDetalles,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black38,
                        letterSpacing: 1.2,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

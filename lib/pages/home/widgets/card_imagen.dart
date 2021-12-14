// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:app_reserva_hoteles/pages/home/widgets/card_precio.dart';
import 'package:flutter/material.dart';

class CardImagen extends StatelessWidget {
  const CardImagen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
        color: Colors.greenAccent,
        image: DecorationImage(
          image: AssetImage("assets/images/hotel_room.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

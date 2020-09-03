import 'package:flutter/material.dart';
import 'package:flutter_apprehber/burcListe.dart';
import '';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Burç Rehberi',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:BurcListesi() ,
    );
  }
}


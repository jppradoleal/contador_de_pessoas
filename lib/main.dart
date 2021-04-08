import 'package:contador_de_pessoas/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contador de Pessoas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            shadows: [
              Shadow(
                blurRadius: 2,
                offset: Offset(5, 5),
                color: Colors.white,
              ),
            ],
          ),
          bodyText1: TextStyle(
            fontSize: 32,
            color: Colors.white,
            shadows: [
              Shadow(
                blurRadius: 2,
                offset: Offset(3, 3),
                color: Colors.white,
              ),
            ],
          ),
          bodyText2: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w400,
              color: Colors.white,
              shadows: [
                Shadow(
                  blurRadius: 2,
                  offset: Offset(2, 2),
                  color: Colors.white,
                ),
              ]),
        ),
      ),
      home: Scaffold(
        body: Home(),
      ),
    );
  }
}

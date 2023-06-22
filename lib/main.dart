import 'package:flutter/material.dart';
import 'package:project/Calendar.dart';
import 'package:project/CalendarConverter.dart';
import 'package:project/Currency.dart';
import 'Tools.dart';
import 'Home.dart';
import 'Map.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF6750a4),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/Tools': (context) => Toolspage(),
        // '/map': (context) => MapS(
        //       mapLat1: 9.1492,
        //       mapLng1: 40.4989,
        //     ),
        '/currency': (context) => Currency(),
        '/calendar': (context) => Calendar(),
        '/Calcov': (context) => CalendarConverter(),
      },
    ),
  );
}

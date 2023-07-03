import 'package:project/ListOfItems.dart';

import 'Discription.dart';
import 'package:flutter/material.dart';
import 'package:project/Calendar.dart';
import 'package:project/CalendarConverter.dart';
import 'package:project/Currency.dart';
import 'package:project/catagory_list.dart';
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
        '/des': (context) => Description(),
        '/item': (context) => ListOFItems(),
        '/currency': (context) => Currency(),
        '/ctgyScreen': (context) => CatagoryScreen(),
        '/calendar': (context) => Calendar(),
        '/Calcov': (context) => CalendarConverter(),
      },
    ),
  );
}

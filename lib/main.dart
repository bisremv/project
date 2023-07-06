import 'package:comment_box/comment/test.dart';
import 'package:flutter/material.dart';
import 'package:project/Discription.dart';
import 'package:project/Tools.dart';
import 'package:project/catagory_list.dart';
import 'GoogleSignInApi.dart';
import 'Home.dart';
import 'Signin.dart';
import 'package:project/Map.dart';
import 'Comment.dart';
import 'Calendar.dart';
import 'CalendarConverter.dart';
import 'Currency.dart';
import 'ListOfItems.dart';
// import '';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:
          Signin(), // Replace Description() with the widget you want as the home screen.
      routes: {
        '/comment': (context) => Comment(),
        '/home': (context) => Home(),
        '/cgylist': (context) => CatagoryScreen(),
        '/tools': (context) => Toolscreen(),
        '/calander': (context) => Calendar(),
        '/calconv': (context) => CalendarConverter(),
        // '/map': (context) => MapScreen(mapLat, mapLng),
        '/currency': (context) => Currency(),
        '/des': (context) => Description(),
        // '/com': (context) => Comment(),
        // '/Item': (context) => ListOFItems(),
        '/sig': (context) => Signin(),

        // Add other named routes and their corresponding widgets here.
      },
    );
  }
}

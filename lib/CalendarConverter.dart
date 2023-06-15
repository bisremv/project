import 'package:flutter/material.dart';
import 'package:project/Home.dart';
import 'Tools.dart';

class CalendarConverter extends StatelessWidget {
  const CalendarConverter({super.key});

  @override
  Widget build(BuildContext context) {
    return CalendarConverterScreen();
  }
}

class CalendarConverterScreen extends StatefulWidget {
  const CalendarConverterScreen({super.key});

  @override
  State<CalendarConverterScreen> createState() =>
      _CalendarConverterScreenState();
}

class _CalendarConverterScreenState extends State<CalendarConverterScreen> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (_selectedIndex == 2) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return Toolspage();
          }),
        );
      } else if (_selectedIndex == 1) {
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return Home();
          }),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text("Calendar converter"),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.collections_rounded),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pan_tool),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFF6750a4),
        onTap: _onItemTapped,
      ),
    );
  }
}

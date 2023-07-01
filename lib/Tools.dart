import 'package:flutter/material.dart';
import 'Home.dart';
import 'ToolCard.dart';

class Toolspage extends StatelessWidget {
  const Toolspage({super.key});
  @override
  Widget build(BuildContext context) {
    return Toolscreen();
  }
}

class Toolscreen extends StatefulWidget {
  const Toolscreen({super.key});

  @override
  State<Toolscreen> createState() => _ToolscreenState();
}

class _ToolscreenState extends State<Toolscreen> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (_selectedIndex == 2) {
        Navigator.pushNamed(context, '/Tools');
      } else if (_selectedIndex == 1) {
        Navigator.pushNamed(context, '/ctgyScreen');
      } else if (_selectedIndex == 0) {
        Navigator.pushNamed(context, '/');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "TOOLS",
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.w900),
        ),
      ),
      body: Container(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  ToolsCards("Map", Icons.map, "map"),
                  ToolsCards("Currency Converter", Icons.currency_exchange,
                      "currency"),
                  // ToolsCards("Currency converter", Icons.currency_exchange),
                ],
              ),
              Row(
                children: [
                  ToolsCards("Calendar", Icons.calendar_month, "calendar"),
                  ToolsCards(
                      "Calendar converter", Icons.calendar_today, "Calcov"),
                ],
              ),
            ],
          ),
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

import 'package:flutter/material.dart';
import 'package:project/FeturedImg.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

int _index = 0;

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (_selectedIndex == 2) {
        Navigator.pushNamed(context, '/Tools');
      } else if (_selectedIndex == 1) {
      } else {
        Navigator.pushNamed(context, '/');
      }
    });
  }

  TextStyle Txtstyhead = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 42,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(children: [
            Text(
              "where Do You Wanna Go",
              style: Txtstyhead,
            ),
            Container(
              width: 370,
              height: 300,
              color: Colors.red,
              child: ListView(
                padding: const EdgeInsets.all(8),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Image.asset("img/blue-nile-water-falls.png"),
                    ),
                  ),
                ],
              ),
            )
          ]),
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

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Featured Attractions Carousel",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(19),
                      // color: Colors.black,
                    ),
                    height: 250,
                    child: Container(
                        // color: Colors.blue,
                        // height: 500, // card height
                        child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        FeaturedImg("imgName", "img/blue-nile-water-falls.png"),
                        FeaturedImg("imgName",
                            "img/Axum-the-cradel-of-Ethiopiac-civ.png"),
                        FeaturedImg("imgName", "img/blue-nile-water-falls.png"),
                        FeaturedImg("imgName", "img/blue-nile-water-falls.png"),
                        FeaturedImg("imgName",
                            "img/Axum-the-cradel-of-Ethiopiac-civ.png"),
                        FeaturedImg("imgName", "img/blue-nile-water-falls.png"),
                      ],
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Column(
                      children: [
                        Text(
                          '\"Traveling—it leaves you speechless then turns you into a storyteller.\"',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
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

import 'package:flutter/material.dart';
import 'font.dart';

class CatagoryScreen extends StatefulWidget {
  const CatagoryScreen({super.key});

  @override
  State<CatagoryScreen> createState() => _CatagoryScreenState();
}

class _CatagoryScreenState extends State<CatagoryScreen> {
  int _selectedIndex = 1;
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
        elevation: 6,
        toolbarHeight: 110,
        title: Text(
          "Discover",
          style: Txtstyhead,
        ),
      ),
      body: GridView.builder(
          itemCount: 6,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: itemBuilder),
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

  Widget? itemBuilder(BuildContext context, int index) {
    String imgPath = imgPlace[index];
    List<double> Conhegiht = [125, 100, 120, 125, 125, 100, 100];
    double heihgt = Conhegiht[index];
    List<String> TitleofCard = [
      " Historical Sites:  ",
      "Cultural Events & Festival",
      "FOODs AND DRINKS",
      " Historical Sites:  ",
      "Cultural Events & Festival",
      "FOODs AND DRINKS",
      " Historical Sites:  ",
      "Cultural Events & Festival",
      "FOODs AND DRINKS",
      " Historical Sites:  ",
      "Cultural Events & Festival",
      "FOODs AND DRINKS"
    ];
    String Name = TitleofCard[index];
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/item');
        },
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.6),
                spreadRadius: 0.1,
                blurRadius: 4,
                offset: Offset(0, 5),
              ),
            ],
            borderRadius: BorderRadius.all(Radius.circular(18.0)),
          ),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Column(
              children: [
                Container(
                  width: 190,
                  height: heihgt,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          imgPath,
                        )),
                    borderRadius: BorderRadius.all(Radius.circular(18.0)),
                  ),
                ),
                Container(
                  width: 190,
                  height: 35,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("$Name"),
                  ),
                  // color: Colors.cyan,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

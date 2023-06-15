import 'package:flutter/material.dart';
import 'package:project/Home.dart';
import 'package:project/Tools.dart';
import 'main.dart';

class Currency extends StatelessWidget {
  const Currency({super.key});

  @override
  Widget build(BuildContext context) {
    return CurrencyScreen();
  }
}

class CurrencyScreen extends StatefulWidget {
  const CurrencyScreen({super.key});

  @override
  State<CurrencyScreen> createState() => _CurrencyScreenState();
}

class _CurrencyScreenState extends State<CurrencyScreen> {
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
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 88, 0, 88.0),
                    child: Text(
                      "Currency Converter",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 360,
                  decoration: BoxDecoration(
                    color: Color(0xfffef7ff),
                    borderRadius: BorderRadius.circular(9),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(12, 8, 0, 0),
                          child: Text("Amount"),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 55,
                                width: 55,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(155)),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(55),
                                  child: Image(
                                    image: AssetImage(
                                        "img/blue-nile-water-falls.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                                width:
                                    18), // Add spacing between the image and text
                            Text(
                                "data"), // Add spacer to push the icon and text field to the right
                            Icon(Icons.arrow_drop_down),
                            SizedBox(
                                width:
                                    22), // Add spacing between the icon and text field
                            Container(
                              width:
                                  170, // Set the width of the text field container
                              child: TextField(
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xffefefef),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide.none,
                                  ),
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 10),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Center(
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Icon(Icons.currency_exchange, size: 55),
                              Container(
                                width: 280,
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom:
                                        BorderSide(color: Color(0xffdfd9e2)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 35,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 55,
                                width: 55,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(155)),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(55),
                                  child: Image(
                                    image: AssetImage(
                                        "img/blue-nile-water-falls.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                                width:
                                    18), // Add spacing between the image and text
                            Text(
                                "data"), // Add spacer to push the icon and text field to the right
                            Icon(Icons.arrow_drop_down),
                            SizedBox(
                                width:
                                    22), // Add spacing between the icon and text field
                            Container(
                              width:
                                  170, // Set the width of the text field container
                              child: TextField(
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xffefefef),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide.none,
                                  ),
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 10),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 58.0),
                    child: Column(
                      children: [
                        Text("Indicative Exchange Rate"),
                        SizedBox(
                          height: 10,
                        ),
                        Text("1 SGD = 0.7367 USD"),
                      ],
                    ),
                  ),
                )
              ],
            ),
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

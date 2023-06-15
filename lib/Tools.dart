import 'package:flutter/material.dart';
import 'main.dart';
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
  int _selectedIndex =0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if(_selectedIndex == 2 ){
        Navigator.push(context,MaterialPageRoute(builder: (context){
          return Toolspage();

        }),);
      }
      else if (_selectedIndex ==1){

      }
      else {

      }
      print(_selectedIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Container(
        child: SafeArea(
          child: Column(
            children: [
              Text("TOOLS" ,style: TextStyle( fontSize:32,fontWeight: FontWeight.w900 ),),
              Row(
                children: [
                  Expanded(
                    child: Card(
                      child: Container(
                        width: 150,
                        height: 150,
                        child: Center(
                          child: Text('Card 1'),
                        ),
                        color: Colors.red,
                      ),
                    ),
                  ),Expanded(
                    child: Card(
                      child: Container(
                        width: 150,
                        height: 150,
                        child: Center(
                          child: Text('Card 1'),
                        ),
                        color: Colors.red,
                      ),
                    ),
                  ),

                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Card(
                      child: Container(
                        width: 150,
                        height: 150,
                        child: Center(
                          child: Text('Card 1'),
                        ),
                        color: Colors.red,
                      ),
                    ),
                  ),Expanded(
                    child: Card(
                      child: Container(
                        width: 150,
                        height: 150,
                        child: Center(
                          child: Text('Card 1'),
                        ),
                        color: Colors.red,
                      ),
                    ),
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


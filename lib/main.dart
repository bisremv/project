import 'package:flutter/material.dart';
import 'Tools.dart';
void main() {
  runApp(MaterialApp(

    home:Bodycontainer(),
  ),
  );
}
class Bodycontainer extends StatefulWidget {
  const Bodycontainer({super.key});
  @override
  State<Bodycontainer> createState() => _BodycontainerState();
}

class _BodycontainerState extends State<Bodycontainer> {
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
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 58.0),
              child: Column(
                children: [
                  Text('\"Traveling—it leaves you speechless then turns you into a storyteller.\"', style: TextStyle(
                      fontSize:32
                       ,fontWeight:FontWeight.w500,
                  ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Text('- Ibn Battuta', style: TextStyle(
                      fontSize:22
                  ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60,
            )
            ,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment:MainAxisAlignment.center ,
              children: [
                Text("Featured Attractions Carousel"
                ,style: TextStyle(fontSize: 20),),
                SizedBox(
                  height: 35,
                ),
                 Container(

                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(19),
                     color: Color(0xFFf7f5fe),
                 ),
                   child: Column(
                     children: [
                       Row(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         children: [
                           FeaturedImg("imgName", "img/Axum-the-cradel-of-Ethiopiac-civ.png"),
                           SizedBox(
                             width: 20,
                           ),
                           FeaturedImg("imgName", "img/Axum-the-cradel-of-Ethiopiac-civ.png"),
                         ],
                       ),
                     SizedBox(
                       height: 20,
                     ),
                       Row(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         children: [
                           FeaturedImg("imgName", "img/Axum-the-cradel-of-Ethiopiac-civ.png"),
                           SizedBox(
                             width: 20,
                           ),
                           FeaturedImg("imgName", "img/Axum-the-cradel-of-Ethiopiac-civ.png"),
                         ],
                       ),
                     ],
                   ),
                 )
              ],
            )

          ],
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

class FeaturedImg extends StatelessWidget {
  late String imgName;
  late String imgUrl;

  FeaturedImg(String this.imgName, String this.imgUrl);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("$imgName"),
            SizedBox(
              height: 15,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(14.0),
                child: Image.asset(
                  imgUrl,
                  width: 150,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

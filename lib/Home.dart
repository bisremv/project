import 'package:flutter/material.dart';
import 'package:project/FeturedImg.dart';
import 'font.dart';
import 'catagory_list.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

int _index = 0;

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  String Placename = "Place Name";
  String PlaceLocation = "country city";
  int like = 0;
  double Rating = 4.2;
  int Comment = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (_selectedIndex == 2) {
        // Navigator.pushNamed(context, '/Tools');
        Navigator.pushReplacementNamed(context, "/tools");
      } else if (_selectedIndex == 1) {
        Navigator.pushReplacementNamed(context, '/cgylist');
      } else if (_selectedIndex == 0) {
        Navigator.pushReplacementNamed(context, '/home');
      }
    });
  }

  Widget _buildListItem(BuildContext context, int index) {
    String imgPath = imgPlace[index];
    return SizedBox(
      width: 400,
      child: Stack(
        alignment: Alignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Container(
              width: 370,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      imgPath,
                    )),
                borderRadius: BorderRadius.all(Radius.circular(18.0)),
              ),
              // borderRadius: BorderRadius.circular(30.0),
              // child: Image.asset(
              //   imgPath,
              //   fit: BoxFit.cover,
              //   width: double.infinity,
              //   height: double.infinity,
              // ),
            ),
          ),
        ],
      ),
    );
  }

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
              // margin: EdgeInsets.all(8),
              width: double.infinity,
              height: 200,

              child: ScrollSnapList(
                itemBuilder: _buildListItem,
                itemCount: imgPlace.length,
                itemSize: 400,
                allowAnotherDirection:
                    axisDirectionIsReversed(AxisDirection.down),
                onItemFocus: (index) {},
                dynamicItemSize: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(3, 18, 0, 18.0),
              child: Container(
                // color: Colors.green,
                width: double.infinity,
                height: 35,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Button action
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: Text(
                        'Text',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Button action
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: Text(
                        'Text',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Button action
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: Text(
                        'Text',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Button action
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: Text(
                        'Text',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Button action
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: Text(
                        'Text',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              // color: Color(0xffE1DAFCFF),
              width: double.infinity,
              height: 260,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(18.0, 0, 0, 0),
                    child: Row(
                      children: [
                        Text("Places"),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(208.0, 0, 0, 0),
                          child: Row(
                            children: [
                              Text("View more"),
                              Icon(
                                Icons.navigate_next,
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 224,
                    // color: Colors.amberAccent,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 250,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(35),
                              child: Card(
                                elevation: 2,
                                child: Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, '/cgylist');
                                      },
                                      child: Container(
                                        height: 132,
                                        width: double.infinity,
                                        child: Image.network(
                                          "https://www.tripsavvy.com/thmb/wAzYHG2ch_3qaIC_qx0tiBXAwPM=/2967x1978/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-120503242-5901add75f9b5810dc097af7.jpg",
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: 55,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("NAME"),
                                            Row(
                                              children: [
                                                Text("Location"),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          100, 0, 0, 0),
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        Icons.star,
                                                        size: 22,
                                                      ),
                                                      Text(
                                                        "$Rating",
                                                        textAlign:
                                                            TextAlign.end,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 250,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(35),
                              child: Card(
                                elevation: 2,
                                child: Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, '/cgylist');
                                      },
                                      child: Container(
                                        height: 132,
                                        width: double.infinity,
                                        child: Image.network(
                                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSr3mW5dTWqY2XpES_Rc21GR0HSFE3daHvgpXC5H38mUbUQDV_Z9z29_ONBn7UYx6NU8Xg&usqp=CAU",
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: 55,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("NAME"),
                                            Row(
                                              children: [
                                                Text("Location"),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          100, 0, 0, 0),
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        Icons.star,
                                                        size: 22,
                                                      ),
                                                      Text(
                                                        "$Rating",
                                                        textAlign:
                                                            TextAlign.end,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/cgylist');
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 250,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(35),
                                child: Card(
                                  elevation: 2,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Stack(
                                          children: [
                                            Image.asset(
                                              "img/Axum-the-cradel-of-Ethiopiac-civ.png",
                                              fit: BoxFit.fill,
                                            ),
                                            Container(
                                              color: Colors.black
                                                  .withOpacity(0.32),
                                              height: 120,
                                              width: 300,
                                            ),
                                            Center(
                                              child: Icon(
                                                Icons.add,
                                                size: 90,
                                                color: Colors.white,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: double.infinity,
                                        height: 55,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("NAME"),
                                              Row(
                                                children: [
                                                  Text("Location"),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(100, 0, 0, 0),
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons.star,
                                                          size: 22,
                                                        ),
                                                        Text(
                                                          "$Rating",
                                                          textAlign:
                                                              TextAlign.end,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // color: Color(0xffE1DAFCFF),
              width: double.infinity,
              height: 260,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(18.0, 0, 0, 0),
                    child: Row(
                      children: [
                        Text("Event"),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(208.0, 0, 0, 0),
                          child: Row(
                            children: [
                              Text("View more"),
                              Icon(
                                Icons.navigate_next,
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 224,
                    // color: Colors.amberAccent,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/cgylist');
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 250,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(35),
                                child: Card(
                                  elevation: 2,
                                  child: Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.pushNamed(
                                              context, '/cgylist');
                                        },
                                        child: Container(
                                          height: 132,
                                          width: double.infinity,
                                          child: Image.network(
                                            "https://i0.wp.com/random-times.com/wp-content/uploads/2021/12/img_5831.jpg?fit=900%2C571&ssl=1",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: double.infinity,
                                        height: 55,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("NAME"),
                                              Row(
                                                children: [
                                                  Text("Location"),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(100, 0, 0, 0),
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons.star,
                                                          size: 22,
                                                        ),
                                                        Text(
                                                          "$Rating",
                                                          textAlign:
                                                              TextAlign.end,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/cgylist');
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 250,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(35),
                                child: Card(
                                  elevation: 2,
                                  child: Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.pushNamed(
                                              context, '/cgylist');
                                        },
                                        child: Container(
                                          height: 132,
                                          width: double.infinity,
                                          child: Image.network(
                                            "https://pbs.twimg.com/media/DKu4DKnWsAAEsnL.jpg",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: double.infinity,
                                        height: 55,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("NAME"),
                                              Row(
                                                children: [
                                                  Text("Location"),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(100, 0, 0, 0),
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons.star,
                                                          size: 22,
                                                        ),
                                                        Text(
                                                          "$Rating",
                                                          textAlign:
                                                              TextAlign.end,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/cgylist');
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 250,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(35),
                                child: Card(
                                  elevation: 2,
                                  child: Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.pushNamed(
                                              context, '/cgylist');
                                        },
                                        child: Container(
                                          height: 132,
                                          width: double.infinity,
                                          child: Image.network(
                                            "https://ethiopianmonitor.com/wp-content/uploads/2019/08/thumbs_b_c_575413c5d7d0c20172f2d3768f57bc7b-800x445.jpg",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: double.infinity,
                                        height: 55,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("NAME"),
                                              Row(
                                                children: [
                                                  Text("Location"),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(100, 0, 0, 0),
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons.star,
                                                          size: 22,
                                                        ),
                                                        Text(
                                                          "$Rating",
                                                          textAlign:
                                                              TextAlign.end,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
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

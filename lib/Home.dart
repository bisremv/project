import 'package:flutter/material.dart';
import 'package:project/FeturedImg.dart';
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
        Navigator.pushNamed(context, '/Tools');
      } else if (_selectedIndex == 1) {
        Navigator.pushNamed(context, '/ctgyScreen');
      } else if (_selectedIndex == 0) {
        Navigator.pushNamed(context, '/');
      }
    });
  }

  void _onItemFocus(int index) {
    setState(() {
      // _focusedIndex = index;
    });
  }

  List imgPlace = [
    // "img/Ellipse 2.png",
    "img/image3.png",
    "img/image1.png",
    "img/Ethiopia-attractions-860x400.jpg",
    "img/image3.png",
    "img/Axum-the-cradel-of-Ethiopiac-civ.png",
    "img/Ellipse 2.png",
    "img/image3.png",
    "img/image1.png",
    "img/Ethiopia-attractions-860x400.jpg",
    "img/image3.png",
    "img/Axum-the-cradel-of-Ethiopiac-civ.png",
    "img/Ellipse 2.png",
    "img/image3.png",
    "img/image1.png",
    "img/Ethiopia-attractions-860x400.jpg",
    "img/image3.png",
    "img/Axum-the-cradel-of-Ethiopiac-civ.png",
    "img/blue-nile-water-falls.png"
  ];
  TextStyle Txtstyhead = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 38,
  );

  Widget _buildListItem(BuildContext context, int index) {
    String imgPath = imgPlace[index];
    return SizedBox(
      width: 400,
      child: Stack(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
            child: ClipPath(
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.transparent),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(35.0),
                  child: Card(
                    // color: Colors.transparent,
                    elevation: 6,
                    //add border radius
                    child: Image.asset(imgPath),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 12,
            left: 73,
            child: Container(
              alignment: Alignment.bottomCenter,
              width: 260,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.75),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 4, 0, 0),
                    child: Text(Placename),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        size: 20,
                      ),
                      Text(PlaceLocation),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 6),
                    child: Row(
                      children: [
                        Icon(
                          Icons.thumb_up,
                          size: 22,
                        ),
                        Text(" $like"),
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          Icons.comment,
                          size: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("$Comment"),
                        SizedBox(
                          width: 65,
                        ),
                        Column(
                          children: [
                            Text("Rating"),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 15,
                                ),
                                Text("$Rating")
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
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
                onItemFocus: _onItemFocus,
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
                    padding: const EdgeInsets.fromLTRB(28.0, 0, 0, 0),
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
                                    Container(
                                      child: Image.asset(
                                        "img/Axum-the-cradel-of-Ethiopiac-civ.png",
                                        fit: BoxFit.fill,
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
                                    Container(
                                      child: Image.asset(
                                        "img/Axum-the-cradel-of-Ethiopiac-civ.png",
                                        fit: BoxFit.fill,
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
                                    Container(
                                      child: Image.asset(
                                        "img/Axum-the-cradel-of-Ethiopiac-civ.png",
                                        fit: BoxFit.fill,
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
                                    Container(
                                      child: Image.asset(
                                        "img/Axum-the-cradel-of-Ethiopiac-civ.png",
                                        fit: BoxFit.fill,
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
                                    Container(
                                      child: Image.asset(
                                        "img/Axum-the-cradel-of-Ethiopiac-civ.png",
                                        fit: BoxFit.fill,
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
                                    Container(
                                      child: Stack(
                                        children: [
                                          Image.asset(
                                            "img/Axum-the-cradel-of-Ethiopiac-civ.png",
                                            fit: BoxFit.fill,
                                          ),
                                          Container(
                                            color:
                                                Colors.black.withOpacity(0.32),
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
                    padding: const EdgeInsets.fromLTRB(28.0, 0, 0, 0),
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
                                    Container(
                                      child: Image.asset(
                                        "img/Axum-the-cradel-of-Ethiopiac-civ.png",
                                        fit: BoxFit.fill,
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
                                    Container(
                                      child: Image.asset(
                                        "img/Axum-the-cradel-of-Ethiopiac-civ.png",
                                        fit: BoxFit.fill,
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
                                    Container(
                                      child: Image.asset(
                                        "img/Axum-the-cradel-of-Ethiopiac-civ.png",
                                        fit: BoxFit.fill,
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
                                    Container(
                                      child: Image.asset(
                                        "img/Axum-the-cradel-of-Ethiopiac-civ.png",
                                        fit: BoxFit.fill,
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
                                    Container(
                                      child: Image.asset(
                                        "img/Axum-the-cradel-of-Ethiopiac-civ.png",
                                        fit: BoxFit.fill,
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
                                    Container(
                                      child: Stack(
                                        children: [
                                          Image.asset(
                                            "img/Axum-the-cradel-of-Ethiopiac-civ.png",
                                            fit: BoxFit.fill,
                                          ),
                                          Container(
                                            color:
                                                Colors.black.withOpacity(0.32),
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
                    padding: const EdgeInsets.fromLTRB(28.0, 0, 0, 0),
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
                                    Container(
                                      child: Image.asset(
                                        "img/Axum-the-cradel-of-Ethiopiac-civ.png",
                                        fit: BoxFit.fill,
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
                                    Container(
                                      child: Image.asset(
                                        "img/Axum-the-cradel-of-Ethiopiac-civ.png",
                                        fit: BoxFit.fill,
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
                                    Container(
                                      child: Image.asset(
                                        "img/Axum-the-cradel-of-Ethiopiac-civ.png",
                                        fit: BoxFit.fill,
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
                                    Container(
                                      child: Image.asset(
                                        "img/Axum-the-cradel-of-Ethiopiac-civ.png",
                                        fit: BoxFit.fill,
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
                                    Container(
                                      child: Image.asset(
                                        "img/Axum-the-cradel-of-Ethiopiac-civ.png",
                                        fit: BoxFit.fill,
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
                                    Container(
                                      child: Stack(
                                        children: [
                                          Image.asset(
                                            "img/Axum-the-cradel-of-Ethiopiac-civ.png",
                                            fit: BoxFit.fill,
                                          ),
                                          Container(
                                            color:
                                                Colors.black.withOpacity(0.32),
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

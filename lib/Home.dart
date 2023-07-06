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
        Navigator.pushNamed(context, "/tools");
      } else if (_selectedIndex == 1) {
        // Navigator.pushNamed(context, '/ctgyScreen');
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CatagoryScreen(), // Replace HOME with Home
          ),
        );
      } else if (_selectedIndex == 0) {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Home(), // Replace HOME with Home
            ));
      }
    });
  }

  void _onItemFocus(int index) {
    setState(() {
      // _focusedIndex = index;
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
          Positioned(
            bottom: 12,
            left: 23,
            child: Container(
              alignment: Alignment.bottomCenter,
              width: 350,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.75),
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.blue, Colors.white],
                  // Adjust the gradient colors to your preference
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.6),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
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

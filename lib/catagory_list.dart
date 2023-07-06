import 'package:flutter/material.dart';
import 'package:project/Historical%20event.dart';
import 'package:project/ListOfItems.dart';
import 'package:project/food.dart';
import 'Home.dart';
// import 'font.dart';
import 'Networking.dart';
import 'events.dart';
import 'Historical event.dart';
import 'listpark.dart';
// import 'ListofitemEV.dart';
import 'listunisco.dart';

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

  List<String> nameList = [];
  List<String> imgList = [];
  List<String> DiscList = [];
  List<String> ratingList = [];
  List<String> latList = [];
  List<String> lanList = [];
  List<String> timeList = [];
  String url = "";
  void getDate(int parameter) async {
    nameList.clear();
    imgList.clear();
    DiscList.clear();
    ratingList.clear();
    latList.clear();
    lanList.clear();
    timeList.clear();

    if (parameter == 0) {
      url = "https://flutterbisratgroupproject.000webhostapp.com/getHE.php";
    } else if (parameter == 1) {
      url = "https://flutterbisratgroupproject.000webhostapp.com/getEv.php";
    } else if (parameter == 2) {
      url = "https://flutterbisratgroupproject.000webhostapp.com/getF.php";
    } else if (parameter == 3) {
      url = "https://flutterbisratgroupproject.000webhostapp.com/getdata.php";
    } else if (parameter == 4) {
      url = "https://flutterbisratgroupproject.000webhostapp.com/getPK.php";
    } else if (parameter == 5) {
      url = "https://flutterbisratgroupproject.000webhostapp.com/getUN.php";
    }

    NetworkHelper networkHelper = NetworkHelper(url);
    var res = await networkHelper.getData();
    print(res);
    if (parameter == 0) {
      for (var item in res) {
        String nam = item["name"];
        String img = item["img"];
        String Disc = item["Disc"];
        String time = item["time"];
        nameList.add(nam);
        imgList.add(img);
        DiscList.add(Disc);
        timeList.add(time);
      }
    } else if (parameter == 1) {
      for (var item in res) {
        String nam = item["name"];
        String img = item["img"];
        String Disc = item["disc"];
        nameList.add(nam);
        imgList.add(img);
        DiscList.add(Disc);
      }
    } else if (parameter == 2) {
      for (var item in res) {
        String nam = item["name"];
        String img = item["img"];
        String Disc = item["disc"];
        String rating = item["rating"];
        nameList.add(nam);
        imgList.add(img);
        DiscList.add(Disc);
        ratingList.add(rating);
      }
    } else if (parameter == 3) {
      for (var item in res) {
        String nam = item["name"];
        String img = item["img"];
        String Disc = item["DIsc"];
        String rating = item["rating"];
        String lat = item["lan"];
        String lan = item["lat"];
        nameList.add(nam);
        imgList.add(img);
        DiscList.add(Disc);
        ratingList.add(rating);
        latList.add(lat);
        lanList.add(lan);
      }
    } else if (parameter == 4) {
      for (var item in res) {
        String nam = item["name"];
        String img = item["img"];
        String Disc = item["disc"];
        String rating = item["rating"];
        String lat = item["lan"];
        String lan = item["lat"];
        nameList.add(nam);
        imgList.add(img);
        DiscList.add(Disc);
        ratingList.add(rating);
        latList.add(lat);
        lanList.add(lan);
      }
    } else if (parameter == 5) {
      for (var item in res) {
        String nam = item["name"];
        String img = item["img"];
        String Disc = item["Disc"];
        String rating = item["rating"];
        nameList.add(nam);
        imgList.add(img);
        DiscList.add(Disc);
        ratingList.add(rating);
      }
    }
  }

  List imgplace = [
    "https://tinyurl.com/2p8486r6",
    "https://tinyurl.com/246syvbu",
    "https://shorturl.at/efhnC",
    "https://shorturl.at/VY178",
    "https://shorturl.at/adqT1",
    "https://www.ethiopianadventuretours.com/application/files/3614/6897/3725/Fasil-ghebbi-gondar-UNESCO-World_heritage-site-Ethiopia.jpg"
  ];

  List<String> TitleofCard = [
    "Historical EVents:",
    "Events & Festival",
    "FOODs AND DRINKS",
    "Landmark:  ",
    "Parks",
    "UNESCO",
  ];
  @override
  Widget build(BuildContext context) {
    // getDate(0);
    return Scaffold(
      appBar: AppBar(
        elevation: 6,
        toolbarHeight: 110,
        title: Text(
          "Discover",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  getDate(0);
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HisEv();
                  }));
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 2.0, horizontal: 8),
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
                            width: 170,
                            height: 150,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(imgplace[0]),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(18.0)),
                            ),
                          ),
                          Container(
                            width: 150,
                            height: 35,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                TitleofCard[0],
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  getDate(1);
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Events();
                  }));
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 2.0, horizontal: 8),
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
                            width: 170,
                            height: 150,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(imgplace[1]),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(18.0)),
                            ),
                          ),
                          Container(
                            width: 150,
                            height: 35,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                TitleofCard[1],
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  getDate(2);
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Food();
                  }));
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 2.0, horizontal: 8),
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
                            width: 170,
                            height: 150,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(imgplace[2]),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(18.0)),
                            ),
                          ),
                          Container(
                            width: 150,
                            height: 35,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                TitleofCard[2],
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  getDate(3);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LIstofitems();
                      },
                    ),
                  );
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 2.0, horizontal: 8),
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
                            width: 170,
                            height: 150,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(imgplace[3]),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(18.0)),
                            ),
                          ),
                          Container(
                            width: 150,
                            height: 35,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                TitleofCard[3],
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  getDate(4);
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return PARK();
                  }));
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 2.0, horizontal: 8),
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
                            width: 170,
                            height: 150,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(imgplace[4]),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(18.0)),
                            ),
                          ),
                          Container(
                            width: 150,
                            height: 35,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                TitleofCard[4],
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  getDate(5);
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return UNesco();
                  }));
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 2.0, horizontal: 8),
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
                            width: 170,
                            height: 150,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(imgplace[5]),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(18.0)),
                            ),
                          ),
                          Container(
                            width: 150,
                            height: 35,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                TitleofCard[5],
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
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

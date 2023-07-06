import 'package:flutter/material.dart';
import 'package:project/Comment.dart';
import 'package:project/Discription.dart';
import 'Networking.dart';

class HisEv extends StatefulWidget {
  HisEv({Key? key}) : super(key: key);

  @override
  State<HisEv> createState() => _HisEvState();
}

class _HisEvState extends State<HisEv> {
  String itemCategory = "ItemCategory";
  String detail =
      "Figma is a design tool that can be used to create wireframes, mockups, and prototypes. It is a popular tool for app designers because it is easy ...";
  String name = "Attraction";
  String url = "";

  Future<dynamic> getDate() async {
    url = "https://flutterbisratgroupproject.000webhostapp.com/getHE.php";
    NetworkHelper networkHelper = NetworkHelper(url);
    var res = await networkHelper.getData();
    return res;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 5,
        title: Text("$itemCategory"),
      ),
      body: FutureBuilder(
        future: getDate(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            print("Error: ${snapshot.error}");
            return Center(child: Text("ERROR"));
          }
          List<dynamic> snap = snapshot.data;
          return ListView.builder(
            itemCount: snap.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 16),
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                            child: Text(
                              snap[index]['name'].toString(),
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 270,
                            child: Image.network(
                              snap[index]['img'].toString(),
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                            child: Text(
                              snap[index]['Disc'].toString(),
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return Comment();
                              }));
                            },
                            child: Center(
                              child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(16, 0, 16, 16),
                                  child: Icon(
                                    Icons.comment,
                                    size: 28,
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}

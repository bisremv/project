import 'package:flutter/material.dart';
import 'Comment.dart';
import 'Networking.dart';

class Events extends StatefulWidget {
  Events({Key? key}) : super(key: key);

  @override
  State<Events> createState() => _EventsState();
}

class _EventsState extends State<Events> {
  String itemCategory = "ItemCategory";
  String detail =
      "Figma is a design tool that can be used to create wireframes, mockups, and prototypes. It is a popular tool for app designers because it is easy ...";
  String name = "Attraction";
  String url = "";
  Future<dynamic> getDate() async {
    url = "https://flutterbisratgroupproject.000webhostapp.com/getEv.php";
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
                    child: GestureDetector(
                      onTap: () {
                        // Handle comment icon click
                        // Implement the desired logic here
                      },
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
                                snap[index]['disc'].toString(),
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.star, color: Colors.yellow),
                                    Text(
                                      snap[index]['rating'].toString(),
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ],
                                ),
                                IconButton(
                                  icon: Icon(
                                    Icons.comment,
                                    size: 37,
                                  ),
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return Comment();
                                    }));
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
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

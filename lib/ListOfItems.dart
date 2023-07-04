import 'package:flutter/material.dart';

class ListOFItems extends StatefulWidget {
  const ListOFItems({super.key});

  @override
  State<ListOFItems> createState() => _ListOFItemsState();
}

class _ListOFItemsState extends State<ListOFItems> {
  @override
  Widget build(BuildContext context) {
    String ItemCatagory = "ItemCatagory";
    String detail =
        "Figma is a design tool that can be used to create wireframes, mockups, and prototypes. It is a popular tool for app designers because it is easy ...";
    String Name = "Attraction";
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 5,
        title: Text("$ItemCatagory"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 1),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/des");
                },
                child: Container(
                  // height: 700,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.4),
                          spreadRadius: 4,
                          blurRadius: 4)
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 32,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(05, 10, 0, 0),
                          child: Text(
                            "$Name",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            // textAlign: TextAlign.start,
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 270,
                        child: Image.asset(
                          "img/Axum-the-cradel-of-Ethiopiac-civ.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 8.0),
                                  child: Icon(
                                    Icons.comment_bank_outlined,
                                    size: 32,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 8.0),
                                  child: Icon(
                                    Icons.more_horiz,
                                    size: 32,
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 5.0),
                              child: Container(
                                child: Text("$detail"),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  // color: Colors.red,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 1),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/des");
                },
                child: Container(
                  // height: 700,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.4),
                          spreadRadius: 4,
                          blurRadius: 4)
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 32,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(05, 10, 0, 0),
                          child: Text(
                            "$Name",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            // textAlign: TextAlign.start,
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 270,
                        child: Image.asset(
                          "img/Axum-the-cradel-of-Ethiopiac-civ.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 8.0),
                                  child: Icon(
                                    Icons.comment_bank_outlined,
                                    size: 32,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 8.0),
                                  child: Icon(
                                    Icons.more_horiz,
                                    size: 32,
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 5.0),
                              child: Container(
                                child: Text("$detail"),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  // color: Colors.red,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 1),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/des");
                },
                child: Container(
                  // height: 700,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.4),
                          spreadRadius: 4,
                          blurRadius: 4)
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 32,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(05, 10, 0, 0),
                          child: Text(
                            "$Name",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            // textAlign: TextAlign.start,
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 270,
                        child: Image.asset(
                          "img/Axum-the-cradel-of-Ethiopiac-civ.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 8.0),
                                  child: Icon(
                                    Icons.comment_bank_outlined,
                                    size: 32,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 8.0),
                                  child: Icon(
                                    Icons.more_horiz,
                                    size: 32,
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 5.0),
                              child: Container(
                                child: Text("$detail"),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  // color: Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

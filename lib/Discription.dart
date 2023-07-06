import 'Comment.dart';
import 'package:flutter/material.dart';

class Description extends StatefulWidget {
  const Description({super.key});

  @override
  State<Description> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  @override
  Widget build(BuildContext context) {
    String Title = "Name";
    String discrpstion =
        "A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made. A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made. A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made. A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made. ";
    String imgPath = "img/Axum-the-cradel-of-Ethiopiac-civ.png";
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("$Title"),
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(48),
                ),
                margin: EdgeInsets.fromLTRB(0, 250, 0, 0),
                width: 398,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                  child: Card(
                    color: Colors.white54,
                    // elevation: 4,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35)),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 25, 0, 0),
                              child: Text(
                                "$Title",
                                style: TextStyle(
                                    fontSize: 32, fontWeight: FontWeight.bold),
                              ),
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        spreadRadius: 5,
                                        blurRadius: 4,
                                        color: Colors.grey.withOpacity(0.4))
                                  ],
                                  color: Colors.white70,
                                  borderRadius: BorderRadius.circular(15)),
                              height: 50,
                              width: double.infinity,
                            ),
                            Stack(children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 70, 0, 0),
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 8,
                                        blurRadius: 4,
                                        offset: Offset(0, 5),
                                      )
                                    ],
                                    color: Colors.white70,
                                    borderRadius: BorderRadius.circular(35)),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Text(
                                    "$discrpstion",
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                // height: 50,
                              ),
                            ]),
                          ],
                        ),
                        Container(
                          width: 70,
                          height: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return Scaffold(
                                      body: Comment(),
                                    );
                                  },
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                            ),
                            child: Center(child: Icon(Icons.comment)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
                child: Container(
                  width: double.infinity,
                  height: 270,
                  decoration: BoxDecoration(
                    // color: Colors.red,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          imgPath,
                        )),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(55),
                      bottomLeft: Radius.circular(33),
                      bottomRight: Radius.circular(0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

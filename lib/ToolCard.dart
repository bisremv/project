import 'package:flutter/material.dart';

class ToolsCards extends StatelessWidget {
  String CardText;
  String route;
  IconData CardIcon;
  ToolsCards(this.CardText, this.CardIcon, this.route, {super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/$route');
        },
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            width: 950,
            height: 150,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    CardIcon,
                    size: 80,
                    color: Color(0xff6750a4),
                  ),
                  Text("$CardText")
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: Color(0xfffef7ff),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: Offset(0, 2), // changes position of shadow
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

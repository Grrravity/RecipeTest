import 'package:flutter/material.dart';

class DetailWidget extends StatelessWidget {
  const DetailWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          height: 140,
          decoration: new BoxDecoration(
            gradient: new LinearGradient(colors: [
              Color.fromRGBO(255, 255, 255, 1),
              Color.fromRGBO(255, 255, 255, 0),
            ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
          ),
          child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 23),
                child: Text(
                  "Colorful pancakes",
                  style: TextStyle(fontSize: 33),
                ),
              )),
        ),
        Container(
          height: 100,
          color: Colors.pink,
          child:
              Text("85 likes 451 kcal 19 mins", style: TextStyle(fontSize: 30)),
        ),
        Container(
          height: 100,
          color: Colors.pink,
          child:
              Text("Instruction / Ingredients", style: TextStyle(fontSize: 33)),
        ),
        Container(
            height: 220, color: Colors.red, child: Text("recipe content")),
      ],
    );
  }
}

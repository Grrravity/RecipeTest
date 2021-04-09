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
                  style: Theme.of(context).textTheme.headline4,
                ),
              )),
        ),
        Container(
          height: 100,
          color: Colors.white,
          child: Text("85 likes 451 kcal 19 mins",
              style: Theme.of(context).textTheme.headline5),
        ),
        Container(
          height: 100,
          color: Colors.white,
          child: Text("Instruction / Ingredients",
              style: Theme.of(context).textTheme.button),
        ),
        Container(
            height: 220,
            color: Colors.white,
            child: Text("recipe content",
                style: Theme.of(context).textTheme.bodyText1)),
      ],
    );
  }
}

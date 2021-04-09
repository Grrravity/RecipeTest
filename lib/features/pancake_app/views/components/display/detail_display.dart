import 'package:flutter/material.dart';
import 'package:pancakeapp/features/pancake_app/views/components/recipe_view.dart';

class DetailWidget extends StatefulWidget {
  const DetailWidget({Key? key}) : super(key: key);

  @override
  _DetailWidgetState createState() => _DetailWidgetState();
}

class _DetailWidgetState extends State<DetailWidget> {
  bool _enabled = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        //TODO Extract components
        Container(
          transform: Matrix4.translationValues(0.0, 4.0, 0.0),
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
          color: Colors.white,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(30, 40, 35, 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    DataInput(
                        asset: 'assets/icons/heart.svg',
                        data: "85 ",
                        label: "Likes"),
                    DataInput(
                        asset: 'assets/icons/calories.svg',
                        data: "451 ",
                        label: "kcal"),
                    DataInput(
                        asset: 'assets/icons/timer.svg',
                        data: "19 ",
                        label: "mins"),
                  ],
                ),
              ),
              CustomSwitch(
                value: _enabled,
                onChanged: (bool val) {
                  setState(() {
                    _enabled = val;
                  });
                },
              ),
              Container(
                  child: Text("recipe content",
                      style: Theme.of(context).textTheme.bodyText1)),
            ],
          ),
        ),
      ],
    );
  }
}

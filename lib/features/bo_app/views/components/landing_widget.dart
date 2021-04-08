import 'package:flutter/material.dart';

class LandingWidget extends StatelessWidget {
  const LandingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Container(
      height: deviceHeight,
      width: deviceWidth,
      color: Colors.white,
      child: Image.asset(
        'assets/white-logo-blue-120x42.png',
        width: 300,
      ),
    );
  }
}

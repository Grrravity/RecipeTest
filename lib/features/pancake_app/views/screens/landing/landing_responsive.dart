import 'package:flutter/cupertino.dart';

class LandingResponsive extends StatelessWidget {
  final Widget informativeWidget, actionWidget;

  LandingResponsive(
      {required this.informativeWidget, required this.actionWidget});

  @override
  Widget build(BuildContext context) {
    return OverflowBar(
      overflowAlignment: OverflowBarAlignment.center,
      spacing: 20.0,
      overflowSpacing: 16.0,
      textDirection: TextDirection.ltr,
      children: [
        informativeWidget,
        actionWidget,
      ],
    );
  }
}

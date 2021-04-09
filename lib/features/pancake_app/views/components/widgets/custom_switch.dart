import 'package:flutter/material.dart';

class CustomSwitch extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  CustomSwitch({Key? key, required this.value, required this.onChanged})
      : super(key: key);

  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  bool ended = true;
  final TextStyle focusTextStyle = TextStyle(
    fontFamily: "SSN-Medium",
    fontSize: 16,
    color: Color(0xFF20CAD1),
  );

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 400));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (ended) {
          ended = false;
          widget.value == false
              ? widget.onChanged(true)
              : widget.onChanged(false);
        }
      },
      child: Container(
        width: 311,
        height: 49,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: Color(0xFFF0F0F0),
        ),
        child: Stack(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
            child: AnimatedAlign(
              alignment:
                  widget.value ? Alignment.centerRight : Alignment.centerLeft,
              duration: Duration(milliseconds: 400),
              curve: Curves.decelerate,
              onEnd: () {
                ended = true;
              },
              child: Container(
                width: 153,
                height: 43,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22.0),
                    color: Colors.white),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Instruction",
                  style: widget.value
                      ? Theme.of(context).textTheme.button
                      : focusTextStyle,
                ),
                Text(
                  "Ingredients",
                  style: !widget.value
                      ? Theme.of(context).textTheme.button
                      : focusTextStyle,
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}

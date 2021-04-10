import 'package:flutter/material.dart';
import 'package:pancakeapp/features/pancake_app/views/components/widgets/list_widget.dart';
import 'package:pancakeapp/features/pancake_app/views/components/widgets/step_widget.dart';

class CustomSwitch extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  CustomSwitch({Key? key, required this.value, required this.onChanged})
      : super(key: key);

  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch>
    with TickerProviderStateMixin {
  late AnimationController listController, stepController;
  late Animation<Offset> listOffset, stepOffset;

  bool ended = true;
  final TextStyle focusTextStyle = TextStyle(
    fontFamily: "SSN-Medium",
    fontSize: 16,
    color: Color(0xFF20CAD1),
  );

  @override
  void initState() {
    listController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 400));

    listOffset = Tween<Offset>(begin: Offset(1.2, 0.0), end: Offset.zero)
        .animate(listController);
    stepOffset = Tween<Offset>(begin: Offset.zero, end: Offset(-1.2, 0.0))
        .animate(listController);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        switch (listController.status) {
          case AnimationStatus.completed:
            //stepController.forward();
            listController.reverse();
            widget.value == false
                ? widget.onChanged(true)
                : widget.onChanged(false);
            break;
          case AnimationStatus.dismissed:
            //stepController.reverse();
            listController.forward();
            widget.value == false
                ? widget.onChanged(true)
                : widget.onChanged(false);
            break;
          default:
        }
      },
      child: Container(
        padding: EdgeInsets.fromLTRB(45, 0, 35, 45),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 13),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                width: 311,
                height: 49,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Color(0xFFF0F0F0),
                ),
                child: Stack(children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                    child: AnimatedAlign(
                      alignment: widget.value
                          ? Alignment.centerRight
                          : Alignment.centerLeft,
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
            ),
            Stack(children: [
              SlideTransition(position: stepOffset, child: StepWidget()),
              SlideTransition(position: listOffset, child: ListWidget()),
            ])
          ],
        ),
      ),
    );
  }
}

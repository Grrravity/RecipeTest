import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pancakeapp/features/pancake_app/views/components/widgets/list_widget.dart';
import 'package:pancakeapp/features/pancake_app/views/components/widgets/step_widget.dart';

class SwitchableList extends StatefulWidget {
  final bool isStep;
  final ValueChanged<bool> onChanged;

  SwitchableList({Key? key, required this.isStep, required this.onChanged})
      : super(key: key);

  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<SwitchableList>
    with TickerProviderStateMixin {
  late AnimationController slideController;
  late Animation<Offset> listOffset, stepOffset;

  bool ended = true;
  final TextStyle focusTextStyle = TextStyle(
    fontFamily: "SSN-Medium",
    fontSize: 16,
    color: Color(0xFF20CAD1),
  );

  @override
  void initState() {
    slideController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 400));

    stepOffset = Tween<Offset>(begin: Offset.zero, end: Offset(-1.2, 0.0))
        .animate(slideController);

    listOffset = Tween<Offset>(begin: Offset(1.2, 0.0), end: Offset.zero)
        .animate(slideController);
    super.initState();
  }

  @override
  dispose() {
    slideController.dispose(); // you need this
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        switch (slideController.status) {
          case AnimationStatus.completed:
            slideController.reverse();
            widget.isStep == false
                ? widget.onChanged(true)
                : widget.onChanged(false);
            break;
          case AnimationStatus.dismissed:
            slideController.forward();
            widget.isStep == false
                ? widget.onChanged(true)
                : widget.onChanged(false);
            break;
          default:
        }
      },
      child: Container(
        color: Colors.transparent,
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
                      alignment: !widget.isStep
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
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Center(
                            child: Text(
                              "Instruction",
                              style: !widget.isStep
                                  ? Theme.of(context).textTheme.button
                                  : focusTextStyle,
                              overflow: TextOverflow.clip,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: Text("Ingredients",
                                style: widget.isStep
                                    ? Theme.of(context).textTheme.button
                                    : Theme.of(context)
                                        .textTheme
                                        .button!
                                        .merge(focusTextStyle),
                                overflow: TextOverflow.clip),
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
              ),
            ),
            Stack(children: [
              SlideTransition(
                  position: stepOffset,
                  child: AnimatedOpacity(
                      opacity: widget.isStep ? 1.0 : 0.0,
                      duration: Duration(milliseconds: kIsWeb ? 100 : 200),
                      child: StepWidget())),
              SlideTransition(
                  position: listOffset,
                  child: AnimatedOpacity(
                      opacity: widget.isStep ? 0.0 : 1.0,
                      duration: Duration(milliseconds: kIsWeb ? 250 : 200),
                      child: ListWidget())),
            ])
          ],
        ),
      ),
    );
  }
}

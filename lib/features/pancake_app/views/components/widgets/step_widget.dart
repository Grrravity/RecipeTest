import 'package:flutter/material.dart';

class StepWidget extends StatelessWidget {
  final List<String> stepList;
  const StepWidget({Key? key, required this.stepList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: stepList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
              padding: EdgeInsets.symmetric(vertical: 25),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text((index + 1).toString(),
                      style: Theme.of(context).textTheme.headline6),
                ),
                SizedBox(width: 13),
                Expanded(
                  child: Text(stepList[index],
                      style: Theme.of(context).textTheme.bodyText2),
                )
              ]));
        });
  }
}

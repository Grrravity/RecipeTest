import 'package:flutter/material.dart';

class StepWidget extends StatelessWidget {
  const StepWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO Refactor with Listview.Builder
    return Column(
      children: [
        Container(
            padding: EdgeInsets.symmetric(vertical: 25),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child:
                      Text("1", style: Theme.of(context).textTheme.headline6),
                ),
                SizedBox(width: 13),
                Expanded(
                  child: Text(
                      "In a large bowl, sift together the flour, baking powder, salt and sugar. Make a well in the center and pour in the milk, egg and melted butter; mix until smooth.",
                      style: Theme.of(context).textTheme.bodyText2),
                ),
              ],
            )),
        Container(
            padding: EdgeInsetsDirectional.only(bottom: 35),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child:
                      Text("2", style: Theme.of(context).textTheme.headline6),
                ),
                SizedBox(width: 13),
                Expanded(
                  child: Text(
                      "Heat a lightly oiled griddle or frying pan over medium-high heat. Pour or scoop the batter into the griddle, using approximately 1/4 cup for each pancake. Brow on both sides and serve hot.",
                      style: Theme.of(context).textTheme.bodyText2),
                ),
              ],
            )),
      ],
    );
  }
}

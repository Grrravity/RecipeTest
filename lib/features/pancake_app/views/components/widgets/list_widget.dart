import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  const ListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(String.fromCharCode(0x2022),
                    style: Theme.of(context).textTheme.headline6),
                SizedBox(width: 13),
                Expanded(
                  child: Text("1 ½ cups all-purposed flour",
                      style: Theme.of(context).textTheme.bodyText1),
                ),
              ],
            )),
        Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(String.fromCharCode(0x2022),
                    style: Theme.of(context).textTheme.headline6),
                SizedBox(width: 13),
                Expanded(
                  child: Text("3 tablespoons butter, melted",
                      style: Theme.of(context).textTheme.bodyText1),
                ),
              ],
            )),
        Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(String.fromCharCode(0x2022),
                    style: Theme.of(context).textTheme.headline6),
                SizedBox(width: 13),
                Expanded(
                  child: Text("3 ½ teaspoons baking powder",
                      style: Theme.of(context).textTheme.bodyText1),
                ),
              ],
            )),
        Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(String.fromCharCode(0x2022),
                    style: Theme.of(context).textTheme.headline6),
                SizedBox(width: 13),
                Expanded(
                  child: Text("1 ¼ cups milk",
                      style: Theme.of(context).textTheme.bodyText1),
                ),
              ],
            )),
        Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(String.fromCharCode(0x2022),
                    style: Theme.of(context).textTheme.headline6),
                SizedBox(width: 13),
                Expanded(
                  child: Text("1 tablespoon white sugar",
                      style: Theme.of(context).textTheme.bodyText1),
                ),
              ],
            )),
        Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(String.fromCharCode(0x2022),
                    style: Theme.of(context).textTheme.headline6),
                SizedBox(width: 13),
                Expanded(
                  child: Text("1 teaspoon salt",
                      style: Theme.of(context).textTheme.bodyText1),
                ),
              ],
            )),
        Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(String.fromCharCode(0x2022),
                    style: Theme.of(context).textTheme.headline6),
                SizedBox(width: 13),
                Expanded(
                  child: Text("1 egg",
                      style: Theme.of(context).textTheme.bodyText1),
                ),
              ],
            )),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  final List<String> ingredientList;
  const ListWidget({Key? key, required this.ingredientList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: ingredientList.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(String.fromCharCode(0x2022),
                          style: Theme.of(context).textTheme.headline6),
                      SizedBox(width: 13),
                      Expanded(
                        child: Text(ingredientList[index],
                            style: Theme.of(context).textTheme.bodyText1),
                      ),
                    ],
                  ));
            }));
  }
}

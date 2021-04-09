import 'package:flutter/material.dart';
import 'package:pancakeapp/features/pancake_app/views/components/display/detail_display.dart';
import 'package:pancakeapp/features/pancake_app/views/components/widgets/header_button_widget.dart';
import 'package:pancakeapp/features/pancake_app/views/components/widgets/recipe_picture_widget.dart';

class RecipeView extends StatefulWidget {
  RecipeView({Key? key}) : super(key: key);

  @override
  RecipeViewState createState() => RecipeViewState();
}

class RecipeViewState extends State<RecipeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  child: RecipePictureWidget(
                      imagePath: 'assets/pictures/pancake.png'))),
          DraggableScrollableSheet(
            initialChildSize: 0.60,
            maxChildSize: 0.9,
            minChildSize: 0.60,
            builder: (BuildContext context, myscrollController) {
              return Container(
                child: SingleChildScrollView(
                  controller: myscrollController,
                  child: DetailWidget(),
                ),
              );
            },
          ),
          Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 55, 20, 0),
                child: HeaderButtonWidget(),
              )),
        ],
      ),
    );
  }
}

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pancakeapp/features/pancake_app/domain/entities/recipe_data.dart';
import 'package:pancakeapp/features/pancake_app/views/components/recipe_view.dart';

class RecipeView extends StatefulWidget {
  final RecipeData recipeData;
  RecipeView({Key? key, required this.recipeData}) : super(key: key);

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
                  width: MediaQuery.of(context).size.width,
                  child: RecipePictureWidget(
                      imagePath: 'assets/pictures/pancake.png'))),
          DraggableScrollableSheet(
            initialChildSize: 0.65,
            maxChildSize: 0.95,
            minChildSize: 0.65,
            builder: (BuildContext context, myScrollController) {
              return Container(
                child: SingleChildScrollView(
                  controller: myScrollController,
                  child: DetailWidget(recipeData: widget.recipeData),
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
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomNavBarWidget(),
          ),
        ],
      ),
    );
  }
}

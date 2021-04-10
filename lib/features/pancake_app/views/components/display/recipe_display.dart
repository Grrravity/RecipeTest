import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pancakeapp/features/pancake_app/views/components/display/detail_display.dart';
import 'package:pancakeapp/features/pancake_app/views/components/widgets/header_button_widget.dart';
import 'package:pancakeapp/features/pancake_app/views/components/widgets/recipe_picture_widget.dart';
import 'package:pancakeapp/features/pancake_app/views/components/widgets/svg_as_paint.dart';

class RecipeView extends StatefulWidget {
  RecipeView({Key? key}) : super(key: key);

  @override
  RecipeViewState createState() => RecipeViewState();
}

class RecipeViewState extends State<RecipeView> {
  final TextStyle focusTextStyle = TextStyle(
    fontFamily: "SSN-Medium",
    fontSize: 10,
    color: Color(0xFF20CAD1),
  );
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
            initialChildSize: 0.62,
            maxChildSize: 0.9,
            minChildSize: 0.62,
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
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 128,
              child: Column(children: [
                Container(
                  height: 35,
                  decoration: new BoxDecoration(
                    gradient: new LinearGradient(colors: [
                      Color.fromRGBO(255, 255, 255, 1),
                      Color.fromRGBO(255, 255, 255, 0),
                    ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
                  ),
                ),
                Container(
                  height: 93,
                  color: Colors.white,
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 29),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 53,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                !kIsWeb
                                    ? SvgPicture.asset(
                                        "assets/icons/dashboard.svg",
                                        semanticsLabel:
                                            "assets/icons/dashboard.svg"
                                                .substring(12),
                                        fit: BoxFit.contain,
                                      )
                                    : Align(
                                        child: SvgAsPaint(
                                            asset:
                                                "assets/icons/dashboard.svg")),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Dashboard",
                                  style: Theme.of(context).textTheme.caption,
                                )
                              ]),
                        ),
                        Container(
                          width: 53,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                !kIsWeb
                                    ? SvgPicture.asset(
                                        "assets/icons/kettlebell.svg",
                                        semanticsLabel:
                                            "assets/icons/kettlebell.svg"
                                                .substring(12),
                                        fit: BoxFit.contain,
                                      )
                                    : Align(
                                        child: SvgAsPaint(
                                            asset:
                                                "assets/icons/kettlebell.svg")),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Exercices",
                                  style: Theme.of(context).textTheme.caption,
                                )
                              ]),
                        ),
                        Container(
                          width: 53,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                !kIsWeb
                                    ? SvgPicture.asset(
                                        "assets/icons/new_recipe.svg",
                                        semanticsLabel:
                                            "assets/icons/new_recipe.svg"
                                                .substring(12),
                                        fit: BoxFit.contain,
                                      )
                                    : Image.asset(
                                        "assets/icons/new_recipe.png",
                                        width: 52,
                                        fit: BoxFit.fill,
                                      ),
                              ]),
                        ),
                        Container(
                          width: 53,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                !kIsWeb
                                    ? SvgPicture.asset(
                                        "assets/icons/book-2.svg",
                                        semanticsLabel:
                                            "assets/icons/book-2.svg"
                                                .substring(12),
                                        fit: BoxFit.contain,
                                      )
                                    : Align(
                                        child: SvgAsPaint(
                                        asset: "assets/icons/book-2.svg",
                                      )),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Recipes",
                                  style: focusTextStyle,
                                )
                              ]),
                        ),
                        Container(
                          width: 53,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Image.asset(
                                  "assets/avatar/avatar-unsplash.png",
                                  height: 26,
                                  fit: BoxFit.contain,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Profile",
                                  style: Theme.of(context).textTheme.caption,
                                )
                              ]),
                        ),
                      ]),
                )
              ]),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pancakeapp/features/pancake_app/views/bloc/pancake_bloc/bloc.dart';
import 'package:pancakeapp/features/pancake_app/views/components/widgets/svg_as_paint.dart';

class CustomNavBarWidget extends StatefulWidget {
  const CustomNavBarWidget({Key? key}) : super(key: key);

  @override
  _CustomNavBarWidgetState createState() => _CustomNavBarWidgetState();
}

class _CustomNavBarWidgetState extends State<CustomNavBarWidget> {
  bool _isToastShown = false;
  @override
  Widget build(BuildContext context) {
    final TextStyle focusTextStyle = TextStyle(
      fontFamily: "SSN-Medium",
      fontSize: 10,
      color: Color(0xFF20CAD1),
    );
    return Container(
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
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            GestureDetector(
              onTap: () {
                _onItemMenuPressed(0);
              },
              child: Container(
                width: 53,
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  !kIsWeb
                      ? SvgPicture.asset(
                          "assets/icons/dashboard.svg",
                          semanticsLabel:
                              "assets/icons/dashboard.svg".substring(12),
                          fit: BoxFit.contain,
                        )
                      : Align(
                          child:
                              SvgAsPaint(asset: "assets/icons/dashboard.svg")),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Dashboard",
                    style: Theme.of(context).textTheme.caption,
                  )
                ]),
              ),
            ),
            GestureDetector(
              onTap: () {
                _onItemMenuPressed(1);
              },
              child: Container(
                width: 53,
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  !kIsWeb
                      ? SvgPicture.asset(
                          "assets/icons/kettlebell.svg",
                          semanticsLabel:
                              "assets/icons/kettlebell.svg".substring(12),
                          fit: BoxFit.contain,
                        )
                      : Align(
                          child:
                              SvgAsPaint(asset: "assets/icons/kettlebell.svg")),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Exercices",
                    style: Theme.of(context).textTheme.caption,
                  )
                ]),
              ),
            ),
            GestureDetector(
              onTap: () {
                _onItemMenuPressed(2);
              },
              child: Container(
                width: 53,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      !kIsWeb
                          ? SvgPicture.asset(
                              "assets/icons/new_recipe.svg",
                              semanticsLabel:
                                  "assets/icons/new_recipe.svg".substring(12),
                              fit: BoxFit.contain,
                            )
                          : Image.asset(
                              "assets/icons/new_recipe.png",
                              width: 52,
                              fit: BoxFit.fill,
                            ),
                    ]),
              ),
            ),
            GestureDetector(
              onTap: () {
                _onItemMenuPressed(3);
              },
              child: Container(
                width: 53,
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  !kIsWeb
                      ? SvgPicture.asset(
                          "assets/icons/book-2.svg",
                          semanticsLabel:
                              "assets/icons/book-2.svg".substring(12),
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
            ),
            GestureDetector(
              onTap: () {
                _onItemMenuPressed(4);
              },
              child: Container(
                width: 53,
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
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
            ),
          ]),
        )
      ]),
    );
  }

  _onItemMenuPressed(int index) async {
    if (_isToastShown) {
      return;
    }
    _isToastShown = true;
    switch (index) {
      case 0:
        BlocProvider.of<PancakeBloc>(context).add(DashboardPressed());
        _showSnackBar(context, "Dashboard is not yet implemented");
        break;
      case 1:
        BlocProvider.of<PancakeBloc>(context).add(ExercicesPressed());
        _showSnackBar(context, "Exercices is not yet implemented");
        break;
      case 2:
        BlocProvider.of<PancakeBloc>(context).add(CreationPressed());
        _showSnackBar(context, "Creation is not yet implemented");
        break;
      case 3:
        BlocProvider.of<PancakeBloc>(context).add(RefreshPressed());
        break;
      case 4:
        BlocProvider.of<PancakeBloc>(context).add(ProfilePressed());
        _showSnackBar(context, "Profile is not yet implemented");
        break;
      default:
        break;
    }
    await Future.delayed(Duration(seconds: 2));
    _isToastShown = false;
  }

  _showSnackBar(BuildContext context, text) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(text),
      duration: Duration(seconds: 2),
      backgroundColor: const Color(0xff20CAD1),
      action: SnackBarAction(
        textColor: Color(0xffF0F0F0),
        label: 'Dismiss',
        onPressed: () {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
        },
      ),
    ));
  }
}

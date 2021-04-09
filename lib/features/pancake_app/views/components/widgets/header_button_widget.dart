import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pancakeapp/features/pancake_app/views/bloc/pancake_bloc/bloc.dart';
import 'package:pancakeapp/features/pancake_app/views/components/widgets/custom_icon_button_widget.dart';

class HeaderButtonWidget extends StatefulWidget {
  HeaderButtonWidget({Key? key}) : super(key: key);

  @override
  _HeaderButtonWidgetState createState() => _HeaderButtonWidgetState();
}

class _HeaderButtonWidgetState extends State<HeaderButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RoundedSquareIconButton(
            onPressed: () {
              _onBackPressed();
            },
            icon: Icons.arrow_back_ios_rounded),
        RoundedSquareIconButton(
            onPressed: () {
              _onMenuPressed();
            },
            icon: Icons.subject)
      ],
    );
  }

  _onMenuPressed() {
    BlocProvider.of<PancakeBloc>(context).add(MenuPressed());
    _showSnackBar(context, "Menu is not yet implemented");
  }

  _onBackPressed() {
    BlocProvider.of<PancakeBloc>(context).add(BackPressed());
    _showSnackBar(context, "Back is not yet implemented");
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

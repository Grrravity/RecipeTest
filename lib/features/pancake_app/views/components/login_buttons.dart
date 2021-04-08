import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pancakeapp/features/pancake_app/views/bloc/pancake_bloc/bloc.dart';

class LoginButtons extends StatefulWidget {
  LoginButtons({Key? key}) : super(key: key);

  @override
  _LoginButtonsState createState() => _LoginButtonsState();
}

class _LoginButtonsState extends State<LoginButtons> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text("Unleash the power of telehealth"),
        SizedBox(height: 10),
        Row(
          children: <Widget>[
            Expanded(
              child: ElevatedButton(
                child: Text('Login'),
                onPressed: () {
                  _login();
                },
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: ElevatedButton(
                  child: Text('Logout'),
                  onPressed: () {
                    _logout();
                  }),
            ),
          ],
        )
      ],
    );
  }

  _login() {
    const _chars = 'abcdefgh1234567890';
    Random _rnd = Random();

    String getRandomString(int length) =>
        String.fromCharCodes(Iterable.generate(
            length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));
    BlocProvider.of<PancakeBloc>(context).add(LoginPressed(getRandomString(1)));
  }

  _logout() {
    BlocProvider.of<PancakeBloc>(context).add(LogoutPressed());
  }
}
